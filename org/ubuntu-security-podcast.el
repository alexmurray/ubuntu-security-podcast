;;; ubuntu-security-podcast --- Utility functions to help with podcast episode preparation -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(eval-when-compile
  (require 'cl))
(require 'mu4e)
(require 'org)

(defvar usp-buffer nil)

(defun usp-extract-usn-from-subject (subject)
  "Extract USN from SUBJECT."
  ;; do both LSN and USNs
  (when (and subject (string-match ".*\\([LU]SN-[0-9][0-9-]+\\).*" subject))
    (match-string 1 subject)))

(defun usp-generate-usn-link (usn)
  "Generate an 'org-mode' link for USN."
  (when usn
    (let ((usn-n (substring usn (string-match "[0-9]" usn))))
      (pcase (substring usn 0 1)
        ("U" (format "[[https://usn.ubuntu.com/%s/][%s]]" usn-n usn))
        (_ usn)))))

(defun usp-generate-cve-link (cve)
  "Generate an 'org-mode' link for CVE."
  (format "[[https://people.canonical.com/~ubuntu-security/cve/%s][%s]]" cve cve))

(defun usp-generate-bug-link (bug)
  "Generate an 'org-mode' link for LP BUG."
  (format "[[https://launchpad.net/bugs/%s][%s]]" bug bug))

(defvar usp-ubuntu-releases
  '(("12.04" "Precise ESM")
    ("14.04" "Trusty ESM")
    ("16.04" "Xenial")
    ("18.04" "Bionic")
    ("18.10" "Cosmic")
    ("19.04" "Disco")))

(defun usp-get-release-codename (release)
  "Get codename for RELEASE."
  (let ((codename release))
    (dolist (pair usp-ubuntu-releases)
      (when (string= release (car pair))
        (setq codename (cadr pair))))
    codename))

(defun usp-parse-usn-email-regex (regex group &optional buffer)
  "Parse email which is in BUFFER returning a list of match GROUP using REGEX."
  (with-current-buffer (or buffer (current-buffer))
    (goto-char (point-min))
    (let ((matches nil))
      (while (re-search-forward regex nil t)
        (cl-pushnew (substring-no-properties (match-string group)) matches :test #'string=))
      matches)))

(defun usp-parse-usn-email-cves (&optional buffer)
  "Parse email which is in BUFFER returning a list of the CVEs."
  (usp-parse-usn-email-regex "\\(CVE-[0-9]\\{4\\}-[0-9]+\\)" 1 buffer))

(defun usp-parse-usn-email-bugs (&optional buffer)
  "Parse email which is in BUFFER returning a list of the Launchpad bugs."
  (usp-parse-usn-email-regex "LP: \\([0-9]+\\)" 1 buffer))

(defun usp-parse-usn-email-releases (&optional buffer)
  "Parse email which is in BUFFER returning a list of the releases."
  (usp-parse-usn-email-regex "^- Ubuntu \\([0-9.]+\\).*$" 1 buffer))

(defun usp-parse-usn-email-buffer (&optional buffer)
  "Parse email which is in BUFFER returning the salient details."
  `((cves . ,(usp-parse-usn-email-cves buffer))
    (bugs . ,(usp-parse-usn-email-bugs buffer))
    (releases . ,(usp-parse-usn-email-releases buffer))))

(defun usp-parse-usn-email-with-path (path)
  "Parse a USN email located at PATH returing the salient details."
  (with-temp-buffer
    ;; view via mu since might be base64 encoded or other
    (shell-command (format "mu view \"%s\"" path) (current-buffer))
    (usp-parse-usn-email-buffer)))

(defun usp-parse-usn-message (msg)
  "Parse a USN MSG returing the salient details."
  (let* ((subject (and msg (mu4e-message-field msg :subject)))
         (usn (usp-extract-usn-from-subject subject))
         (link (usp-generate-usn-link usn))
         (details nil))
    (when usn
      (setq details (usp-parse-usn-email-with-path (mu4e-message-field msg :path)))
      (push `(usn . ,usn) details)
      (push `(subject . ,subject) details)
      (push `(link . ,link) details))
    details))

(defun usp-generate-usn-summary (details)
  "Generate a 'org-mode' summary for DETAILS."
  (with-temp-buffer
    (insert (format "*** %s\n"
                    (replace-regexp-in-string
                     (alist-get 'usn details)
                     (alist-get 'link details)
                     (alist-get 'subject details)
                     t)))
    (let ((cves (alist-get 'cves details))
          (bugs (alist-get 'bugs details))
          (releases (alist-get 'releases details)))
      ;; might still have releases but no CVEs if is a regression update
      (if (= (length cves) 0)
          (insert (format "- Affecting %s\n" (mapconcat #'(lambda (rel)
                                                            (usp-get-release-codename rel))
                                                        releases ", ")))
        (insert (format "- %d CVEs addressed in %s\n" (length cves)
                        (mapconcat #'(lambda (rel) (usp-get-release-codename rel)) releases ", ")))
        (insert (mapconcat #'(lambda (cve) (concat "  - " (usp-generate-cve-link cve))) cves "\n"))
        (insert "\n"))
      (when (> (length bugs) 0)
        (insert (mapconcat #'(lambda (bug) (concat "  - " (usp-generate-bug-link bug))) bugs "\n"))))
    (buffer-string)))

(defun usp-generate-summary-details (start end)
  "Generate summary details for USNs from mu4e from dates START to END."
  (let ((all-details nil))
    (with-temp-buffer
      (shell-command (concat "mu find --format=sexp "
                             "list:ubuntu-security-announce.lists.ubuntu.com "
                             (format "date:%s..%s" start end) " "
                             "not flag:trashed") (current-buffer))
      (goto-char (point-min))
      (while (not (eobp))
        (let ((details (usp-parse-usn-message
                        ;; ignore errors reading so we don't get error
                        ;; on end of buffer
                        (ignore-errors (read (current-buffer))))))
          (when details
            ;; collect details but ensure we don't get the same one twice
            (cl-pushnew details all-details :test #'equal)))))
    all-details))

(defun usp-get-unique-cves (details)
  "Get the unique CVEs from all DETAILS."
  (let ((unique-cves nil))
    (dolist (det details)
      (mapc #'(lambda (cve)
                (cl-pushnew cve unique-cves :test #'string=))
            (alist-get 'cves det)))
    unique-cves))

(defun usp-generate-usn-summaries (details)
  "Insert a summary from USNs described by DETAILS in usp-buffer."
  (with-temp-buffer
    (insert "** This week in Ubuntu Security Updates\n")
    (insert (format "%d unique CVEs addressed\n" (length (usp-get-unique-cves details))))
    (insert (mapconcat #'usp-generate-usn-summary (reverse details) "\n"))
    (buffer-string)))

(defun usp-get-next-episode-number ()
  "Find the current highest numbered episode and return it +1."
  (save-excursion
    (goto-char (point-min))
    (if (re-search-forward "^* Episode \\([0-9]+\\)" nil t)
        (1+ (string-to-number (match-string 1)))
      1)))

(defun usp-update-episode-metadata ()
  "Update the duration and bytes for the current episode."
  (interactive)
  (save-excursion
    (re-search-backward "^\\* Episode \\([0-9]+\\)$")
    (let* ((episode (string-to-number (match-string-no-properties 1)))
           (audio-file-name (expand-file-name (format "USP_E%03d.mp3" episode)
                                              "~/Ubuntu Security Podcast/"))
           (num-bytes (file-attribute-size (file-attributes audio-file-name)))
           (output (shell-command-to-string (format "ffmpeg -i \"%s\"" audio-file-name))))
      ;; first update export date
      (re-search-forward "^:EXPORT_DATE: \\(.*\\)$")
      (replace-match (format-time-string "%Y-%m-%d %H:%M") t t nil 1)
      (if (null (string-match "Duration: [0-9]\\{2\\}:\\([0-9]\\{2\\}\\):\\([0-9]\\{2\\}\\).[0-9]\\{2\\}"
                              output))
          (error "Unable to get Duration of %s via ffmpeg" audio-file-name)
        (let ((mins (match-string 1 output))
              (secs (match-string 2 output)))
          (re-search-forward "^:EXPORT_HUGO_CUSTOM_FRONT_MATTER: :episode_image img/usp_logo_500.png :explicit no :podcast_file USP_E[0-9]+\.mp3 :podcast_duration \"\\([0-9M]\\{2\\}:[0-9S]\\{2\\}\\)\" :podcast_bytes \"\\(NUM_BYTES\\|[0-9]\+\\)\" :permalink \"https://ubuntusecuritypodcast.org/episode-[0-9]+/\" :guid [a-z0-9]+$")
          (replace-match (concat mins ":" secs) t t nil 1)
          (replace-match (format "%d" num-bytes) t t nil 2))))))

(defun usp-insert-episode-template (episode publish-date start end description)
  "Insert template for episode number EPISODE on PUBLISH-DATE covering time from START to END with DESCRIPTION."
  (interactive
   (list (read-number "Episode: " (usp-get-next-episode-number))
         (org-read-date nil nil nil "Publish Date: ")
         (org-read-date nil nil nil "Start Date: ")
         (org-read-date nil nil nil "End Date: ")
         (read-string "Description: " "This week we look at some details of the NUM-CVES unique CVEs addressed across the supported Ubuntu releases and more.")))
  (unless (eq major-mode 'org-mode)
    (error "Current buffer should be an org-mode buffer"))
  (unwind-protect
      (progn
        (setq usp-buffer (current-buffer))
        (let ((title (format "Episode %d" episode))
              (export-file-name (format "episode-%d" episode))
              (audio-file-name (format "USP_E%03d.mp3" episode))
              (details (usp-generate-summary-details start end)))
          (setq description
                (replace-regexp-in-string "NUM-CVES"
                                          (number-to-string
                                           (length (usp-get-unique-cves details)))
                                          description))
          (insert (concat "* " title "\n"
                          ":PROPERTIES:\n"
                          ":EXPORT_FILE_NAME: " export-file-name "\n"
                          ":EXPORT_DATE: " publish-date "\n"
                          ":EXPORT_HUGO_CUSTOM_FRONT_MATTER: :episode_image img/usp_logo_500.png :explicit no :podcast_file " audio-file-name " :podcast_duration \"MM:SS\" :podcast_bytes \"NUM_BYTES\" :permalink \"https://ubuntusecuritypodcast.org/" export-file-name "/\" :guid " (secure-hash 'sha512 audio-file-name) "\n"
                          ":END:\n"
                          "#+begin_description\n"
                          description "\n"
                          "#+end_description\n"

                          "** Overview\n"
                          description "\n"))
          (insert (usp-generate-usn-summaries details))
          (insert (concat "** Goings on in Ubuntu Security Community\n"
                          "** Get in contact\n"
                          "- [[mailto:security@ubuntu.com][security@ubuntu.com]]\n"
                          "- [[http://webchat.freenode.net?channels=%2523ubuntu-hardened&uio=d4][#ubuntu-hardened on the Freenode IRC network]]\n"
                          "- [[https://twitter.com/ubuntu_sec][@ubuntu_sec on twitter]]\n"))))))

(defun usp-insert-episode-link (&optional episode)
  "Insert an org-mode link to the show-notes for EPISODE."
  (interactive "nEpisode: ")
  (insert (format "[[https://ubuntusecuritypodcast.org/episode-%d/][Episode %d]]"
                  episode episode)))

(provide 'ubuntu-security-podcast)
;;; ubuntu-security-podcast.el ends here
