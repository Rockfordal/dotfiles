;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Packages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(when (>= emacs-major-version 24) ;alert something)

(require 'package)
(setq package-enable-at-startup nil)

;Repositories
(setq package-archives
      '(("gnu" .       "http://elpa.gnu.org/packages/")
        ("elpa" .      "http://tromey.com/elpa/")
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ("melpa" .     "http://melpa.milkbox.net/packages/")))

(package-initialize)
