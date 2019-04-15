;;; jcs-css-mode.el --- CSS mode. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(require 'css-mode)
(require 'com-css-sort)
(require 'rainbow-mode)

;; css indent spaces.
(setq css-indent-offset 2)

(defun jcs-css-mode-hook ()
  "Hook for CSS mode."
  (impatient-mode t)
  (goto-address-mode 1)

  ;; Treat some character as whitespace character.
  (modify-syntax-entry ?- "-")
  (modify-syntax-entry ?. "-")

  (defun jcs-css-format()
    "Format the given file as a CSS file."
    (when (jcs-is-current-file-empty-p)
      (jcs-insert-css-template)))

  (when buffer-file-name
    (cond ((file-exists-p buffer-file-name) t)
          ((string-match "[.]css" buffer-file-name) (jcs-css-format))
          ))

  ;; Set Faces.
  (jcs-init-css-faces)

  ;; Normal
  (define-key css-mode-map (kbd "C-d") #'jcs-kill-whole-line)
  (define-key css-mode-map "\C-c\C-c" #'kill-ring-save)
  (define-key emmet-mode-keymap "\C-c\C-c" #'kill-ring-save)

  (define-key css-mode-map (kbd "DEL") #'jcs-electric-backspace)
  (define-key css-mode-map (kbd "{") #'jcs-vs-front-curly-bracket-key)
  (define-key css-mode-map (kbd ";") #'jcs-vs-semicolon-key)

  ;; Edit
  (define-key css-mode-map (kbd "<up>") #'jcs-css-smart-indent-up)
  (define-key css-mode-map (kbd "<down>") #'jcs-css-smart-indent-down)

  ;; Save
  (define-key css-mode-map "\C-s" #'jcs-css-save-buffer)

  ;; comment block
  (define-key css-mode-map (kbd "RET") #'jcs-css-return-key)
  (define-key css-mode-map (kbd "*") #'jcs-c-comment-pair)

  ;; sort attribute in order => `com-css-sort' package.
  (define-key css-mode-map "\C-ks" #'com-css-sort-attributes-block)
  (define-key css-mode-map "\C-kd" #'com-css-sort-attributes-document)

  ;; Eemmet
  (define-key emmet-mode-keymap (kbd "C-<return>") #'jcs-emmet-expand-line)
  )
(add-hook 'css-mode-hook 'jcs-css-mode-hook)
(add-hook 'css-mode-hook 'emmet-mode)


(provide 'jcs-css-mode)
;;; jcs-css-mode.el ends here
