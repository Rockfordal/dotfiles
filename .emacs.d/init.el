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

;(setq package-list '(evil smex))
(defvar required-packages '(evil evil-org smex powerline projectile prodigy helm helm-projectile helm-dash clojure-mode color-theme-sanityinc-solarized nginx-mode clojure-cheatsheet cider neotree rainbow-mode rainbow-delimiters ido-ubiquitous smartparens))
;clj-refactor
; undo-tree persistent-soft pcache goto-chg
; color-theme-github
; ido-ubiquitous kanske inte behövs av cider när man har company-mode

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

(if (eq system-type 'darwin)
  (set-default-font "Pragmata\ Pro-19")
  (set-default-font "Pragmata\ Pro-18"))

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
;(set-default-font "Courier New-20")

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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Files
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Customizations file /Avdi
(setq abg-emacs-init-file load-file-name)
(setq abg-emacs-config-dir
  (file-name-directory abg-emacs-init-file))

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" abg-emacs-config-dir))
(load custom-file)

;; Backups
;(setq user-emacs-directory abg-emacs-config-dir)
; (setq backup-directory-alist
;   (list (cons "." (expand-file-name "backup" user-emacs-directory))))

;(setq backup-directory-alist `(("." . "~/.emacs.d/backup")))

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;(defvar --backup-directory (concat user-emacs-directory "backup"))
; (if (not (file-exists-p --backup-directory))
;    (make-directory --backup-directory t))
;(setq backup-directory-alist `(("." . ,--backup-directory)))
; (setq make-backup-files t ; backup of a file the first time it is saved.
;      backup-by-copying t ; don't clobber symlinks
;      version-control t	  ; version numbers for backup files
;      delete-old-versions t	 ; delete excess backup files silently
;      delete-by-moving-to-trash t
;      kept-old-versions 6 ; oldest versions to keep when a new numbered backup is made (default: 2)
;      kept-new-versions 9 ; newest versions to keep when a new numbered backup is made (default: 2)
;      auto-save-default t ; auto-save every buffer that visits a file
;      auto-save-timeout 20 ; number of seconds idle time before auto-save (default: 30)
;      auto-save-interval 200 ; number of keystrokes between auto-saves (default: 300))

;(setq make-backup-files nil)

;; Cider 
(setq cider-lein-command "/usr/local/bin/lein")
(setq cider-known-endpoints '(("localhost" "24000")
  ("fire" "fire.solidcrm.se" "24000")
  ("urdb" "db.urkraft.se" "24000")
  ("quattro" "quattro.solidcrm.se" "24000")))
(add-hook 'cider-mode-hook #'eldoc-mode) ; 'turn-on-eldoc-mode)
;(setq cider-auto-mode nil)
;(setq nrepl-log-messages t)
;(setq nrepl-hide-special-buffers t)
;(setq cider-repl-tab-command #'indent-for-tab-command)
;(setq cider-prefer-local-resources t) ; local vs tramp mode
;(setq cider-repl-pop-to-buffer-on-connect nil)
;(setq cider-show-error-buffer nil)
;(setq cider-show-error-buffer 'except-in-repl) ; except-in-repl or only-in-repl
;(setq cider-auto-select-error-buffer nil)
;(setq cider-stacktrace-default-filters '(tooling dup))
;(setq cider-stacktrace-fill-column 80)
;(setq nrepl-buffer-name-separator "-")
;(setq nrepl-buffer-name-show-port t)
;(setq cider-repl-display-in-current-window t)
;(setq cider-prompt-save-file-on-load nil)
;(setq cider-repl-result-prefix ";; => ")
;(setq cider-repl-use-clojure-font-lock t)
;(setq cider-switch-to-repl-command #'cider-switch-to-current-repl-buffer)

;; Cider Tests
;(setq cider-test-show-report-on-success t)
;(setq cider-repl-wrap-history t)
;(setq cider-repl-history-size 1000) ; the default is 500
;(setq cider-repl-history-file "path/to/file")

;; Cider Autocomplete
;(global-company-mode)
;(add-hook 'cider-repl-mode-hook #'company-mode)
;(add-hook 'cider-mode-hook #'company-mode)
;ido-everywhere ;ido-ubiquitous ;ido-flex

;(require 'ac-cider)
;(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
;(add-hook 'cider-mode-hook 'ac-cider-setup)
;(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
;(eval-after-load "auto-complete"
;  '(progn
;     (add-to-list 'ac-modes 'cider-mode)
;     (add-to-list 'ac-modes 'cider-repl-mode)))

; Från Emacs Live
;(add-hook 'cider-repl-mode-hook
;          (lambda ()
;            (cider-turn-on-eldoc-mode)
	    ;(paredit-mode 1)
;	    ))
;(add-hook 'cider-mode-hook (cider-turn-on-eldoc-mode))

;(require 'ac-nrepl )
;(add-hook 'cider-mode-hook 'ac-nrepl-setup)
;(add-hook 'cider-repl-mode-hook 'ac-nrepl-setup)
; (require 'clj-refactor) + addhook, 2 * define-key

(setq nrepl-popup-stacktraces nil)
(add-to-list 'same-window-buffer-names "<em>nrepl</em>")

;; General Auto-Complete
(require 'auto-complete-config)
(setq ac-delay 0.0)
(setq ac-quick-help-delay 0.5)
(ac-config-default)

;; ac-nrepl (Auto-complete for the nREPL)
(require 'ac-nrepl)
(add-hook 'cider-mode-hook 'ac-nrepl-setup)
(add-hook 'cider-repl-mode-hook 'ac-nrepl-setup)
(add-to-list 'ac-modes 'cider-mode)
(add-to-list 'ac-modes 'cider-repl-mode)
(add-hook 'cider-mode-hook 'ac-cider-setup) ; anlu
;(ac-cider-setup)

;; Poping-up contextual documentation
(eval-after-load "cider"
  '(define-key cider-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc))

;; Cider extra
(add-hook 'cider-repl-mode-hook #'smartparens-strict-mode)
(add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)
;(Require 'cider-eval-sexp-fu)

;(global-set-key [f9] 'cider-jack-in)  ; C-c M-j
;(global-set-key [f11] 'speedbar)

(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions '(auto-complete)))

(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'cider-mode-hook 'set-auto-complete-as-completion-at-point-function)


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

;; Markdown-mode
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

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
(rainbow-delimiters-mode-enable)
(smartparens-mode 1)
(require 'smartparens-config)
(winner-mode) ; undo fönster
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

;(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
;(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
;(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
;(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
;(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
;(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
;(add-hook 'scheme-mode-hook           #'enable-paredit-mode)
;(add-hook 'clojure-mode-hook          #'paredit-mode)

; Magit silence
(setq magit-last-seen-setup-instructions "1.4.0")
