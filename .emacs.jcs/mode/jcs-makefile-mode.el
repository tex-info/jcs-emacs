;;; jcs-makefile-mode.el --- Makefile mode. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(defun jcs-makefile-mode-hook ()
  "Makefile mode hook."
  (electric-pair-mode nil)
  (goto-address-mode 1)
  (auto-highlight-symbol-mode t)

  (defun jcs-makefile-format ()
    "Format the given file as a makefile file."

    (when (jcs-is-current-file-empty-p)
      (jcs-makefile-format-info)
      (goto-char (point-min))))

  (cond ((file-exists-p buffer-file-name) t)
        ((string-match "[.]makefile" buffer-file-name) (jcs-makefile-format))
        ((string-match "[Mm]akefile" buffer-file-name) (jcs-makefile-format))
        ((string-match "[.]mak" buffer-file-name) (jcs-makefile-format))
        )

  ;; Normal
  (define-key makefile-mode-map (kbd "<up>") #'jcs-py-indent-up)
  (define-key makefile-mode-map (kbd "<down>") #'jcs-py-indent-down)
  (define-key makefile-mode-map (kbd "RET") #'jcs-makefile-newline)

  (define-key makefile-mode-map (kbd "C-d") #'jcs-kill-whole-line)
  (define-key makefile-mode-map "\C-c\C-c" #'kill-ring-save)

  ;; tabify save key
  (define-key makefile-mode-map "\C-s" #'jcs-tabify-save-buffer)

  ;; Edit
  (define-key makefile-mode-map (kbd "SPC") #'jcs-py-space)
  (define-key makefile-mode-map (kbd "S-SPC") #'jcs-py-real-space)
  (define-key makefile-mode-map (kbd "<backspace>") #'jcs-py-backspace)
  (define-key makefile-mode-map (kbd "S-<backspace>") #'jcs-py-real-backspace)
  )
(add-hook 'makefile-mode-hook 'jcs-makefile-mode-hook)

;; temporary makefile
(add-to-list 'auto-mode-alist '("\\.mak?\\'" . makefile-mode))
(add-to-list 'auto-mode-alist '("\\.makfile?\\'" . makefile-mode))
(add-to-list 'auto-mode-alist '("\\(/\\|\\`\\)[Mm]akefile" . makefile-mode))


(provide 'jcs-makefile-mode)
;;; jcs-makefile-mode.el ends here
