;;; ubuntu-security-podcast --- Utility functions to help with podcast episode preparation -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(require 'cl-lib)
(require 'org)
(require 'uct nil t)

(defvar usp-buffer nil)

(defun usp-extract-usn-from-subject (subject)
  "Extract USN from SUBJECT."
  ;; do both LSN and USNs
  (when (and subject (string-match ".*\\([LU]SN-[0-9][0-9-]+\\).*" subject))
    (match-string 1 subject)))

(defun usp-generate-usn-link (usn)
  "Generate an 'org-mode' link for USN."
  (when usn
    (format "[[https://ubuntu.com/security/notices/%s][%s]]" usn usn)))

(defun usp-generate-cve-link (cve)
  "Generate an 'org-mode' link for CVE."
  (format "[[https://ubuntu.com/security/%s][%s]]" cve cve))

(defun usp-generate-bug-link (bug)
  "Generate an 'org-mode' link for LP BUG."
  (format "[[https://launchpad.net/bugs/%s][%s]]" bug bug))

(defvar usp-ubuntu-releases
  '(("12.04" "Precise ESM (12.04 ESM)")
    ("14.04" "Trusty ESM (14.04 ESM)")
    ("16.04" "Xenial ESM (16.04 ESM)")
    ("18.04" "Bionic ESM (18.04 ESM)")
    ("18.10" "Cosmic (18.10)")
    ("19.04" "Disco (19.04)")
    ("19.10" "Eoan (19.10)")
    ("20.04" "Focal (20.04 LTS)")
    ("20.10" "Groovy (20.10)")
    ("21.04" "Hirsute (21.04)")
    ("21.10" "Impish (21.10)")
    ("22.04" "Jammy (22.04 LTS)")
    ("22.10" "Kinetic (22.10)")
    ("23.04" "Lunar (23.04)")
    ("23.10" "Mantic (23.10)")
    ("24.04" "Noble (24.04 LTS)")))

(defun usp-get-release-codename (release)
  "Get codename for RELEASE."
  (let ((codename release))
    (dolist (pair usp-ubuntu-releases codename)
      (when (string= release (car pair))
        (setq codename (cadr pair))))))

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

(defun usp-parse-usn-email-with-notmuch-query (query)
  "Parse a USN email with QUERY returing the salient details."
  (with-temp-buffer
    ;; view via notmuch since might be base64 encoded or other
    (shell-command (format "notmuch show \"%s\"" query) (current-buffer))
    (usp-parse-usn-email-buffer)))

(defun usp-parse-usn-messages (msgs)
  "Parse USNs from MSGS returing the salient details."
  (let ((all-details nil))
    (dolist (msg msgs (nreverse all-details))
      (let* ((subject (and msg (plist-get msg :subject)))
             (usn (usp-extract-usn-from-subject subject))
             (link (usp-generate-usn-link usn))
             (query (car (and msg (plist-get msg :query))))
             (details nil))
        (when usn
          (setq details (usp-parse-usn-email-with-notmuch-query query))
          (push `(usn . ,usn) details)
          (push `(subject . ,subject) details)
          (push `(link . ,link) details)
          (cl-pushnew details all-details :test #'equal))))))

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
        ;; insert number of different priority CVEs if we can
        (when (and (fboundp 'uct-cve-priority)
                   (boundp 'uct-list--priorities))
          (let ((priorities (make-hash-table :test 'equal)))
            (mapc #'(lambda (cve)
                      (let ((p (uct-cve-priority cve)))
                        (puthash p (1+ (gethash p priorities 0)) priorities)))
                  cves)
            (mapc #'(lambda (p)
                      (let* ((priority (symbol-name p))
                             (n (gethash priority priorities 0)))
                        (when (> n 0)
                          (insert (format "  - %d %s priority CVE(s)\n" n priority)))))
                  uct-list--priorities))))
      (when (> (length bugs) 0)
        (insert (mapconcat #'(lambda (bug) (concat "  - " (usp-generate-bug-link bug))) bugs "\n"))))
    (buffer-string)))

(defun usp-generate-summary-details (start end)
  "Generate summary details for USNs from dates START to END."
  (with-temp-buffer
    (shell-command (concat "notmuch search --format=sexp "
                           "tag:lists/ubuntu-security-announce "
                           (format "date:%s..%s"
                                   (string-replace "-" "" start)
                                   (string-replace "-" "" end)))
                   (current-buffer))
    (goto-char (point-min))
    (let ((msgs (read (current-buffer))))
      (usp-parse-usn-messages msgs))))

(defun usp-get-unique-cves (details)
  "Get the unique CVEs from all DETAILS."
  (let ((unique-cves nil))
    (dolist (det details unique-cves)
      (mapc #'(lambda (cve)
                (cl-pushnew cve unique-cves :test #'string=))
            (alist-get 'cves det)))))

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
    (if (re-search-forward "^\\* Episode \\([0-9]+\\)" nil t)
        (1+ (string-to-number (match-string 1)))
      1)))

;;;###autoload
(defun usp-update-episode-metadata ()
  "Update the duration and bytes for the current episode."
  (interactive)
  (save-excursion
    (re-search-backward "^\\* Episode \\([0-9]+\\)$")
    (let* ((episode (string-to-number (match-string-no-properties 1)))
           (audio-file-name (expand-file-name (format "USP_E%03d.mp3" episode)
                                              "~/Ubuntu Security Podcast/"))
           (labels-file-name (expand-file-name (format "USP_E%03d_labels.txt" episode)
                                               "~/Ubuntu Security Podcast/"))
           (num-bytes (file-attribute-size (file-attributes audio-file-name)))
           (output (string-trim (shell-command-to-string (format "ffprobe -i \"%s\" -show_entries format=duration -v quiet -of csv=\"p=0\"" audio-file-name))))
           (duration (string-to-number output)))
      (when (= duration 0)
        (error "Unable to get duration of %s from ffprobe output: '%s'" audio-file-name output))
      (save-excursion
        ;; first update export date
        (re-search-forward "^:EXPORT_DATE: \\(.*\\)$")
        (replace-match (format-time-string "%Y-%m-%d %H:%M") t t nil 1)
        (re-search-forward "^:EXPORT_HUGO_CUSTOM_FRONT_MATTER: :episode_image img/usp_logo_500.png :explicit no :podcast_file USP_E[0-9]+\.mp3 :podcast_duration \"\\(.*\\)\" :podcast_bytes \"\\(NUM_BYTES\\|[0-9]\+\\)\" :permalink \"https://ubuntusecuritypodcast.org/episode-[0-9]+/\" :guid [a-z0-9]+$")
        (replace-match (format "%d" duration) t t nil 1)
        (replace-match (format "%d" num-bytes) t t nil 2)
        (save-excursion
          ;; now update timestamps for each heading when available
          (let ((labels))
            (with-temp-buffer
              (ignore-errors
                (insert-file-contents labels-file-name))
              (goto-char (point-min))
              (while (re-search-forward "\\([0-9\\.]+\\)\\s-+\\([0-9\\.]+\\)\\s-+\\(.*\\)" nil t)
                (let ((time (round (string-to-number (match-string 1))))
                      (label (substring-no-properties (match-string 3))))
                  (setq labels (cons `(,label . ,time) labels)))))
            (dolist (label (nreverse labels))
              (when (re-search-forward (car label) nil t)
                (insert (format " [%02d:%02d]" (/ (cdr label) 60) (% (cdr label) 60)))))))))))

;;;###autoload
(defun usp-insert-episode-template (episode publish-date start end description)
  "Insert template for EPISODE on PUBLISH-DATE from START to END with DESCRIPTION."
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
                          "- [[https://libera.chat][#ubuntu-security on the Libera.Chat IRC network]]\n"
                          "- [[https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened][ubuntu-hardened mailing list]]\n"
                          "- [[https://discourse.ubuntu.com/c/security][Security section on discourse.ubuntu.com]]\n"
                          "- [[https://fosstodon.org/@ubuntusecurity][@ubuntusecurity@fosstodon.org]], [[https://twitter.com/ubuntu_sec][@ubuntu_sec on twitter]]\n"))))))

;;;###autoload
(defun usp-insert-episode-link (&optional episode)
  "Insert an 'org-mode' link to the show-notes for EPISODE."
  (interactive "nEpisode: ")
  (insert (format "[[https://ubuntusecuritypodcast.org/episode-%d/][Episode %d]]"
                  episode episode)))

(provide 'ubuntu-security-podcast)
;;; ubuntu-security-podcast.el ends here
