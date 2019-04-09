;;; jcs-jayces-mode.el --- JayCeS mode. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(require 'jayces-mode)
(defun jcs-jayces-mode-hook ()
  "JayCeS mode hook."
  (abbrev-mode 1)
  (goto-address-mode 1)
  (auto-highlight-symbol-mode t)

  ;; Treat underscore as word.
  (modify-syntax-entry ?_ "w")

  (defun jcs-jayces-class-format ()
    "Format the given file as a JayCeS file."
    (when (jcs-is-current-file-empty-p)
      (jcs-insert-jayces-template)))

  (when buffer-file-name
    (cond ((file-exists-p buffer-file-name) t)
          ((string-match "[.]jcs" buffer-file-name) (jcs-jayces-class-format))
          ((string-match "[.]jayces" buffer-file-name) (jcs-jayces-class-format))
          ))

  )
(add-hook 'jayces-mode-hook 'jcs-jayces-mode-hook)

(add-to-list 'auto-mode-alist '("\\.jcs'?\\'" . jayces-mode))
(add-to-list 'auto-mode-alist '("\\.jayces'?\\'" . jayces-mode))


(provide 'jcs-jayces-mode)
;;; jcs-jayces-mode.el ends here
