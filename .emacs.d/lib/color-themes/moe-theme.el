;;; moe theme
(use-package moe-theme
  :ensure t)

(require 'moe-theme)


;; Show highlighted buffer-id as decoration. (Default: nil)
(setq moe-theme-highlight-buffer-id t)


;; Resize titles (optional).
(setq moe-theme-resize-markdown-title '(1.5 1.4 1.3 1.2 1.0 1.0))
(setq moe-theme-resize-org-title '(1.5 1.4 1.3 1.2 1.1 1.0 1.0 1.0 1.0))
(setq moe-theme-resize-rst-title '(1.5 1.4 1.3 1.2 1.1 1.0))


;; Choose a color for mode-line.(Default: blue)
;;(moe-theme-set-color 'cyan)

;; Too Yellow Background in terminal?
(setq moe-light-pure-white-background-in-terminal t)


;;; paren
(setq show-paren-style 'expression)


;; Finally, apply moe-theme now.
;; Choose what you like, (moe-light) or (moe-dark)
;;(moe-light)

;; automatically switch between moe-dark and moe-light according to the system time
(require 'moe-theme-switcher)

(powerline-moe-theme)


;;(moe-theme-set-color 'orange)
;; (Available colors: blue, orange, green ,magenta, yellow, purple, red, cyan, w/b.)

