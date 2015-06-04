;; MELPA
(require 'package) ;; You might already have this line
(require 'cl)

; Använd en lokal mirror
;(add-to-list 'load-path "~/.emacs.d/elpa-mirror/")
;(require 'elpa-mirror)

;(when (< emacs-major-version 24)
(add-to-list 'package-archives
           ;;'("melpa" . "http://melpa.org/packages/") t)
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize) ;; You might already have this line

; list the packages you want
;(setq package-list '(evil smex powerline projectile prodigy helm helm-projectile helm-dash clojure-mode
;		     paredit "evil-paredit"))

(defvar required-packages '(evil smex powerline projectile prodigy helm helm-projectile helm-dash clojure-mode paredit evil-paredit color-theme-sanityinc-solarized))

; method to check if all packages are installed
(defun packages-installed-p ()
  (loop for p in required-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

; if not all packages are installed, check one by one and install the missing ones.
(unless (packages-installed-p)
  ; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))

; fetch the list of packages available 
;(or (file-exists-p package-user-dir) (package-refresh-contents)) 

; install the missing packages
;(dolist (package package-list)
;  (unless (package-installed-p package)
;    (package-install package)))


(add-to-list 'custom-theme-load-path "~/.emacs.d/lib/color-themes")
;(setq sml/no-confirm-load-theme 'solarized-dark)
;color-theme-sanityinc-solarized-dark
;(load-theme 'solarized-dark)

(set-default-font "Pragmata\ Pro-18")
;(set-default-font "Office\ Code\ Pro-16.5")
;(set-default-font "M+\ 1m-19.5")
;(set-default-font "Consolas-19.5")
;(set-default-font "Andale Mono-19")
;(set-default-font "Source\ Code\ Pro-16")
;(set-default-font "Apercu-17")
;(set-default-font "DejaVuSansMono-18")
;(set-default-font "CamingoCode-17")
;(set-default-font "Inconsolata-20")
;(set-default-font "Anonymous Pro-19")
;(set-default-font "Monaco-18")

; (custom-set-faces
  ; '(default ((t (:family "M+\ 1m" :slant normal :weight normal :height 170 :width normal)))))

;; Fixa så man kan skriva brackets med ALT
(if (eq system-type 'darwin)
  ;; Fixa så man kan skriva brackets med ALT
  (if (boundp 'ns-command-modifier)
      (setq ns-command-modifier 'meta))

  (if (boundp 'ns-option-modifier)
      (setq ns-option-modifier nil))
;(switch-to-buffer "anlu")
(setq ns-option-modifier nil) ;; anlu test
)


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
;((nil . ((projectile-globally-ignored-files . '(".nrepl-history" "target/*.*")))))

;; Clojure-mode
(add-to-list 'auto-mode-alist '("\\.boot\\'" . clojure-mode))

;; restclient
(load "~/.emacs.d/lisp/restclient-20150513.131.el")

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
(setq helm-dash-common-docsets '("Clojure")) ; Redis

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

; Magit silence
(setq magit-last-seen-setup-instructions "1.4.0")
