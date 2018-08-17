;;; ubuntu-security-podcast --- Utility functions to help with podcast episode preparation -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(require 'mu4e)
(require 'org)

(defvar usp-buffer nil)

(defun usp-extract-usn-from-subject (subject)
  "Extract USN from SUBJECT."
  (when (string-match ".*\\(USN-[0-9-]+\\).*" subject)
    (match-string 1 subject)))

(defun usp-insert-usn-summary-for-message (msg)
  "Insert a summary for MSG in current buffer."
  (let* ((subject (plist-get msg :subject))
         (id (plist-get msg :message-id))
         (usn (usp-extract-usn-from-subject subject)))
    (with-current-buffer usp-buffer
      (insert (concat "** " subject "\n")))))

(defun usp-insert-usn-summary-2 ()
  "Second half of `usp-insert-usn-summary'."
  (mu4e-headers-for-each #'usp-insert-usn-summary-for-message))

(defun usp-insert-usn-summary (start end)
  "Insert a summary from USNs from mu4e from dates START to END in current buffer."
  (interactive
   (list (org-read-date nil nil nil "Start: ") (org-read-date nil nil nil "End: ")))
  ;; searching happens async so make sure we get called by hooking manually
  (let ((usp-buffer (current-buffer))
        (mu4e-headers-mode-hook '(usp-insert-usn-summary-2))
        (mu4e-headers-include-related nil))
    (mu4e-headers-search (concat "list:ubuntu-security-announce.lists.ubuntu.com "
                                 (format "date:%s..%s" start end) " "
                                 "not flag:trashed"))))

(defun usp-insert-episode-template (episode publish-date start end description summary)
  "Insert template for episode number EPISODE on PUBLISH-DATE covering time from START to END with DESCRIPTION and SUMMARY."
  (interactive
   (list (read-number "Episode: ")
         (org-read-date nil nil nil "Publish Date: ")
         (org-read-date nil nil nil "Start Date: ")
         (org-read-date nil nil nil "End Date: ")
         (read-string "Description: ")
         (read-string "Summary: " "Includes a summary of the security vulnerabilities and fixes from the last week as well as a discussion on some of the goings on in the wider Ubuntu Security community.")))
  (unless (eq major-mode 'org-mode)
    (error "Current buffer should be an org-mode buffer"))
  (let ((usp-buffer (current-buffer))
        (title (format "Episode %d" episode))
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
    (switch-to-buffer usp-buffer)
    (insert (concat "** Goings on in Ubuntu Security Community\n"
                    "*** Hiring\n"
                    "**** Ubuntu Security Engineer\n"
                    "- https://boards.greenhouse.io/canonical/jobs/1158266\n"
                    "** Get in contact\n"
                    "- [[mailto:security@ubuntu.com][security@ubuntu.com]]\n"
                    "- [[http://webchat.freenode.net?channels=%2523ubuntu-hardened&uio=d4][#ubuntu-hardended on the Freenode IRC network]]\n"
                    "- [[https://twitter.com/ubuntu_sec][@ubuntu_sec on twitter]]\n"))))

(provide 'ubuntu-security-podcast)
;;; ubuntu-security-podcast.el ends here
