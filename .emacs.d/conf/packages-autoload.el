;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Packages autoload
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defvar required-packages '(evil evil-org smex powerline prodigy helm helm-dash clojure-mode color-theme-sanityinc-solarized nginx-mode clojure-cheatsheet neotree rainbow-mode rainbow-delimiters ido-ubiquitous smartparens magit markdown-mode clj-refactor undo-tree tree-mode windata))

(require 'cl)

; tree persistent-soft pcache goto-chg

; fetch the list of packages available 
;(or (file-exists-p package-user-dir) (package-refresh-contents)) 

;; method to check if all packages are installed
(defun packages-installed-p ()
  (loop for p in required-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

;; if not all packages are installed, check one by one and install the missing ones.
(unless (packages-installed-p)
; check for new packages (package versions)
(message "%s" "Emacs is now refreshing its package database...")
(package-refresh-contents)
(message "%s" " done.")
; install the missing packages
(dolist (p required-packages)
(unless (package-installed-p p)
(package-install p))))

; if not all packages are installed, check one by one and install the missing ones.
(unless (packages-installed-p)
; check for new packages (package versions)
(message "%s" "Emacs is now refreshing its package database...")
(package-refresh-contents)
(message "%s" " done.")
; install the missing packages
(dolist (p required-packages)
(unless (package-installed-p p)
(package-install p))))
