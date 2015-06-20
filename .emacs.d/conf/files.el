;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Files
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'projectile)
(require 'helm-projectile)

(projectile-global-mode)
;(setq projectile-indexing-method 'native)
;(setq projectile-enable-caching nil)
;(setq projectile-require-project-root t)

(defun maybe-projectile-find-file ()
  (interactive)
  (call-interactively
   (if (projectile-project-p)
       (helm-projectile)
       (helm-for-files))))

(global-set-key (kbd "M-p") 'helm-mini)
(global-set-key (kbd "M-o") 'maybe-projectile-find-file)
;((nil . ((projectile-globally-ignored-files . '(".nrepl-history" "target/*.*")))))

;; Customizations file /Avdi
(setq abg-emacs-init-file load-file-name)
(setq abg-emacs-config-dir
  (file-name-directory abg-emacs-init-file))

; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" abg-emacs-config-dir))
(load custom-file)

(setq make-backup-files nil)

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)
(make-directory "~/.emacs.d/backups/" t)

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


;(setq backup-directory-alist
;      `((".*" . ,temporary-file-directory)))
;(setq auto-save-file-name-transforms
;      `((".*" ,temporary-file-directory t)))
