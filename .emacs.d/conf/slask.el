;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Slask
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(add-to-list 'load-path "~/.emacs.d/libs")
(smartparens-mode 1)
(require 'smartparens-config)

(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)

(global-set-key (kbd "M-p") 'ace-window)

(require 'chruby)
(chruby "jruby-1.7.2")

(if (file-exists-p abg-init-dir)
    (dolist (file (directory-files abg-init-dir t "\.el$"))
      (load file)))

(setq-default line-spacing 4)

;;web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'"     . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'"   . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'"   . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'"       . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'"  . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'"    . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'"       . web-mode))
