;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Hooks
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Rainbow Delimiters
(add-hook 'cs-lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook    'rainbow-delimiters-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

; Company Mode
(add-hook 'emacs-lisp-mode-hook 'company-mode)
(add-hook 'cider-mode-hook      'company-mode) ; 'turn-on-eldoc-mode)
(add-hook 'clojure-mode-hook    'company-mode)
;(add-hook 'after-init-hook     'global-company-mode)

; Smartparens
(add-hook 'emacs-lisp-mode-hook  'smartparens-mode)
(add-hook 'clojure-mode-hook     'smartparens-mode)
(add-hook 'cider-repl-mode-hook  'smartparens-strict-mode)

;(add-hook 'emacs-lisp-mode-hook                  #'enable-paredit-mode)
;(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
;(add-hook 'lisp-interaction-mode-hook            #'enable-paredit-mode)
;(add-hook 'lisp-mode-hook                        #'enable-paredit-mode)
;(add-hook 'ielm-mode-hook                        #'enable-paredit-mode)
;(add-hook 'scheme-mode-hook                      #'enable-paredit-mode)
;(add-hook 'clojure-mode-hook                     #'enable-paredit-mode)
