;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; General
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-linum-mode 1)            ;; line number
(windmove-default-keybindings)   ;; shift moves between windows

; Magit silence
(setq magit-last-seen-setup-instructions "1.4.0")

; y for yes
(defalias 'yes-or-no-p 'y-or-n-p)

; im not a robot
(setq initial-scratch-message nil  ;; no comments To in *scratch* buffer
      echo-keystrokes 0.1
      use-dialog-box nil
      visible-bell t)

;; spaces always, folks
(setq-default indent-tabs-mode nil)

;; Split 
; Perhaps i could bind disable global-ratio-mode so that i dont have to disable it
(global-set-key [M-down] 'shrink-window)
(global-set-key [M-up] 'enlarge-window)
(global-set-key [M-right] 'shrink-window-horizontally)
(global-set-key [M-left] 'enlarge-window-horizontally)
;(require 'golden-ratio)
;(add-hook 'clojure-mode-hook    'golden-ratio-mode)
;(add-hook 'cider-repl-mode-hook 'golden-ratio-mode)
;(add-hook 'emacs-lisp-mode-hook 'golden-ratio-mode)

;; Markdown-mode
(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; Restclient
(load "~/.emacs.d/lisp/restclient-20150513.131.el")
