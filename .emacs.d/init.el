(load "~/.emacs.d/conf/packages")
;(load "~/.emacs.d/conf/packages-autoload")
(load "~/.emacs.d/conf/themes")
(load "~/.emacs.d/conf/fonts")
(load "~/.emacs.d/conf/files")      ;; Projectile, Helm
(load "~/.emacs.d/conf/cider")
(load "~/.emacs.d/conf/clojure")    ;; clojure-mode
(load "~/.emacs.d/conf/general")
(load "~/.emacs.d/conf/fix")        ;; osx meta alt
(load "~/.emacs.d/conf/hooks")

;; Evil mode
(require 'evil) (evil-mode 1)

;; Powerline
(require 'powerline) (powerline-center-theme) ; default center

; Window Undo
(require 'winner) (winner-mode 1)

;; Highlight Parentheses
(require 'paren) (show-paren-mode 1)

;; Helm-dash
(require 'helm-dash)
(setq helm-dash-common-docsets '("Clojure")) ; Redis

;; Smex  (access to recent commands)
(require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c M-x") 'execute-extended-command)

;; Magit
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

;; Dirtree
(load (concat user-emacs-directory "libs/" "dirtree.el"))
(require 'tree-mode)
(require 'windata)
(require 'dirtree)
(autoload 'dirtree "dirtree" "Add directory to tree view" t)
