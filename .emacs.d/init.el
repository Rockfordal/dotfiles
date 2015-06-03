;; MELPA
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
           ;;'("melpa" . "http://melpa.org/packages/") t)
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;; Cider Bookmarks
(setq cider-known-endpoints '(("localhost" "24000")
			      ("fire" "fire.solidcrm.se" "24000")
			      ("urdb" "db.urkraft.se" "24000")
			      ("quattro" "quattro.solidcrm.se" "24000")))

;; Highlight Parentheses
(require 'paren)
(setq show-paren-style 'parenthesis)
(show-paren-mode +1)

;; Enable projectile globally
(require 'projectile)
(projectile-global-mode)

;; Clojure-mode
(add-to-list 'auto-mode-alist '("\\.boot\\'" . clojure-mode))

;; restclient
(load "/home/andersl/.emacs.d/lisp/restclient-20150513.131.el")

;; Smex
(require 'smex)
(global-set-key (kbd "M-x") 'smex)
;(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
;; Remove the default splash screen
(setq inhibit-startup-message t)
;; Don't add any comments To the *scratch* buffer
(setq initial-scratch-message nil)

(require 'powerline)
(powerline-center-theme) ; default center

;; Helm-dash
; Redis
(setq helm-dash-common-docsets '("Clojure"))

;; Customizations file /Avdi
(setq abg-emacs-init-file load-file-name)
(setq abg-emacs-config-dir
      (file-name-directory abg-emacs-init-file))

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" abg-emacs-config-dir))
(load custom-file)

(setq user-emacs-directory abg-emacs-config-dir)
 
(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" user-emacs-directory))))

;(add-to-list 'load-path "~/.emacs.d/elpa-mirror/")
;(require 'elpa-mirror)

(add-to-list 'custom-theme-load-path "~/.emacs.d/lib/color-themes")
;(setq sml/no-confirm-load-theme 'solarized-dark)
;color-theme-sanityinc-solarized-dark
;(load-theme 'solarized-dark)

(load custom-file)
(evil-mode)
(winner-mode 1) ; undo fönster
(windmove-default-keybindings)
;(org-replace-disputed-keys)  ; en fix för nå i org, windmove? /Avdi G 

(custom-set-variables
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 ;'(enh-ruby-bounce-deep-indent t)
 '(eshell-scroll-show-maximum-output nil)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(safe-local-variable-values (quote ((encoding . utf-8))))
 '(scroll-bar-mode nil)
'(tool-bar-mode nil))

(set-default-font "Apercu-16")
;(set-default-font "Office\ Code\ Pro-16")
;(set-default-font "Source\ Code\ Pro-16")
;(set-default-font "CamingoCode-18")
;(set-default-font "DejaVuSansMono-18")
;(set-default-font "M+\ 1m-20")
;(set-default-font "Inconsolata-20")
;(set-default-font "Anonymous Pro-19")
;(set-default-font "Monaco-18")
;(set-default-font "Consolas-20")

; (custom-set-faces
; '(default ((t (:family "Apercu" :slant normal :weight normal :height 194 :width normal)))))

;(switch-to-buffer "anlu")
;(require 'chruby)
;(chruby "jruby-1.7.2")

;(if (file-exists-p abg-init-dir)
;    (dolist (file (directory-files abg-init-dir t "\.el$"))
;      (load file)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Clojure Mode Configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'clojure-mode)

;; For better indentation for Compojure macros
(define-clojure-indent
  (defroutes 'defun)
  (GET 2)
  (POST 2)
  (PUT 2)
  (DELETE 2)
  (HEAD 2)
  (ANY 2)
  (-> 1)
  (->> 1)

  ;; For better indentation of speclj
  (it 'defun)
  (describe 'defun)
  (context 'defun))

;; 'Always 2 spaces' indentation
(setq clojure-defun-style-default-indent t)

(put 'implement 'clojure-backtracking-indent '(4 (2)))
(put 'letfn 'clojure-backtracking-indent '((2) 2))
(put 'proxy 'clojure-backtracking-indent '(4 4 (2)))
(put 'reify 'clojure-backtracking-indent '((2)))
(put 'deftype 'clojure-backtracking-indent '(4 4 (2)))
(put 'defrecord 'clojure-backtracking-indent '(4 4 (2)))
(put 'defprotocol 'clojure-backtracking-indent '(4 (2)))
(put 'extend-type 'clojure-backtracking-indent '(4 (2)))
(put 'extend-protocol 'clojure-backtracking-indent '(4 (2)))
(put 'specify 'clojure-backtracking-indent '(4 (2)))
(put 'specify! 'clojure-backtracking-indent '(4 (2)))

(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)
(add-hook 'clojure-mode-hook          #'paredit-mode)


