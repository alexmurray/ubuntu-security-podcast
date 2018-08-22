;;; ubuntu-security-podcast --- Utility functions to help with podcast episode preparation -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(require 'cl)
(require 'mu4e)
(require 'org)

(defvar usp-buffer nil)

(defun usp-extract-usn-from-subject (subject)
  "Extract USN from SUBJECT."
  ;; do both LSN and USNs
  (when (string-match ".*\\([LU]SN-[0-9-]+\\).*" subject)
    (match-string 1 subject)))

(defun usp-generate-usn-link (usn)
  "Generate an 'org-mode' link for USN."
  (let ((usn-n (substring usn (string-match "[0-9]" usn))))
    (pcase (substring usn 0 1)
      ("U" (format "[[https://usn.ubuntu.com/%s/][%s]]" usn-n usn))
      (_ usn))))

(defun usp-generate-cve-link (cve)
  "Generate an 'org-mode' link for CVE."
  (format "[[https://people.canonical.com/~ubuntu-security/cve/%s][%s]]" cve cve))

(defun usp-insert-usn-summary-for-message (msg)
  "Insert a summary for MSG in current buffer."
  (let* ((subject (mu4e-message-field msg :subject))
         (path (mu4e-message-field msg :path))
         (usn (usp-extract-usn-from-subject subject)))
    (unless usp-buffer (error "Error: `usp-buffer` is nil"))
    (when usn
      (let ((link (usp-generate-usn-link usn))
            (cves nil))
        (with-temp-buffer
          (insert-file-contents-literally path)
          (goto-char (point-min))
          (while (re-search-forward "\\(CVE-[0-9]\\{4\\}-[0-9]+\\)" nil t)
            (cl-pushnew (substring-no-properties (match-string 1)) cves :test #'string=)))
        (with-current-buffer usp-buffer
          (save-excursion
            (insert (format "*** %s\n" (replace-regexp-in-string usn link subject t)))
            (when (> (length cves) 0)
              (insert (format "- %d CVEs addressed across TODO\n" (length cves)))
              (insert (mapconcat #'(lambda (cve) (concat "  - " (usp-generate-cve-link cve))) cves "\n"))
              (insert "\n"))))))))

(defun usp-insert-usn-summary (start end)
  "Insert a summary from USNs from mu4e from dates START to END in current buffer."
  ;; searching happens async so make sure we get called by hooking manually -
  ;; we can't let bind either since this is async...
  (unless usp-buffer (error "Error: `usp-buffer` is nil"))
  (let ((result-buffer (get-buffer-create "*usn-results*")))
    (shell-command (concat "mu find --format=sexp "
                           "list:ubuntu-security-announce.lists.ubuntu.com "
                           (format "date:%s..%s" start end) " "
                           "not flag:trashed") result-buffer)
    (with-current-buffer result-buffer
      (goto-char (point-min))
      (while (let ((msg (read (current-buffer))))
               (when msg
                 (usp-insert-usn-summary-for-message msg))
               msg))
      (kill-buffer result-buffer))))

(defun usp-get-next-episode-number ()
  "Find the current highest numbered episode and return it +1."
  (save-excursion
    (goto-char (point-min))
    (when (re-search-forward "^* Episode \\([0-9]+\\)")
      (1+ (string-to-number (match-string 1))))))

(defun usp-insert-episode-template (episode publish-date start end summary description)
  "Insert template for episode number EPISODE on PUBLISH-DATE covering time from START to END with DESCRIPTION and SUMMARY."
  (interactive
   (list (read-number "Episode: " (usp-get-next-episode-number))
         (org-read-date nil nil nil "Publish Date: ")
         (org-read-date nil nil nil "Start Date: ")
         (org-read-date nil nil nil "End Date: ")
         (read-string "Summary: ")
         (read-string "Description: " "Includes a summary of the security vulnerabilities and fixes from the last week as well as a discussion on some of the goings on in the wider Ubuntu Security community.")))
  (unless (eq major-mode 'org-mode)
    (error "Current buffer should be an org-mode buffer"))
  (unwind-protect
      (progn
        (setq usp-buffer (current-buffer))
        (let ((title (format "Episode %d" episode))
              (export-file-name (format "episode-%d" episode))
              (audio-file-name (format "USP_E%03d.mp3" episode)))
          (insert (concat "* " title "\n"
                          ":PROPERTIES:\n"
                          ":EXPORT_FILE_NAME: " export-file-name "\n"
                          ":EXPORT_DATE: " publish-date "\n"
                          ":EXPORT_HUGO_CUSTOM_FRONT_MATTER: :episode_image img/episode/default.png :explicit no :podcast_file " audio-file-name " :podcast_duration \"MM:SS\" :podcast_bytes \"NUM_BYTES\"\n"
                          ":END:\n"
                          "#+begin_description\n"
                          description "\n"
                          "#+end_description\n"
                          "#+begin_summary\n"
                          summary "\n"
                          "#+end_summary\n"

                          "** Overview\n"
                          "TODO\n"
                          "** This week in Ubuntu Security Updates\n"))
          (usp-insert-usn-summary start end)
          ;; ensure we switch back
          (with-current-buffer usp-buffer
            (insert (concat "** Goings on in Ubuntu Security Community\n"
                            "*** Hiring\n"
                            "**** Ubuntu Security Engineer\n"
                            "- https://boards.greenhouse.io/canonical/jobs/1158266\n"
                            "** Get in contact\n"
                            "- [[mailto:security@ubuntu.com][security@ubuntu.com]]\n"
                            "- [[http://webchat.freenode.net?channels=%2523ubuntu-hardened&uio=d4][#ubuntu-hardended on the Freenode IRC network]]\n"
                            "- [[https://twitter.com/ubuntu_sec][@ubuntu_sec on twitter]]\n")))))))

(provide 'ubuntu-security-podcast)
;;; ubuntu-security-podcast.el ends here
