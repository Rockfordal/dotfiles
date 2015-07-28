;; Cider 
(setq cider-lein-command "/usr/local/bin/lein")
(setq nrepl-popup-stacktraces nil)
(setq cider-known-endpoints '(("lokal" "localhost" "7888")
                              ;("fire" "fire.solidcrm.se" "24000")
                              ;("urdb" "db.urkraft.se" "24000")
                              ;("quattro" "quattro.solidcrm.se" "24000")
                              ))

(add-to-list 'same-window-buffer-names "<em>nrepl</em>")

(defun cider-namespace-refresh ()
  (interactive)
  (cider-interactive-eval
   "(require 'clojure.tools.namespace.repl)
    (clojure.tools.namespace.repl/refresh)"))

;(define-key clojure-mode-map (kbd "M-r") 'cider-namespace-refresh)

;(add-hook 'cider-mode-hook #'eldoc-mode) ; 'turn-on-eldoc-mode)

;(setq cider-auto-mode nil)
;(setq nrepl-log-messages t)
;(setq nrepl-hide-special-buffers t)
;(setq cider-repl-tab-command #'indent-for-tab-command)
;(setq cider-prefer-local-resources t) ; prefer local over remote tramp when both a.
;(setq cider-repl-pop-to-buffer-on-connect nil) ; prevent auto-display of REPL buffer in separate window
(setq cider-show-error-buffer nil) ; nil 'except-in-repl
;(setq cider-auto-select-error-buffer nil)
;(setq cider-stacktrace-default-filters '(tooling dup))
;(setq cider-stacktrace-fill-column 80)
;(setq nrepl-buffer-name-separator "-")
;(setq nrepl-buffer-name-show-port t)
;(setq cider-repl-display-in-current-window t)
(setq cider-prompt-save-file-on-load nil)
(setq cider-repl-result-prefix ";; => ")
;(setq cider-repl-use-clojure-font-lock t)
;(setq cider-switch-to-repl-command #'cider-switch-to-current-repl-buffer)

;; Cider Tests
;(setq cider-test-show-report-on-success t)
;(setq cider-repl-wrap-history t)
;(setq cider-repl-history-size 1000) ; the default is 500
;(setq cider-repl-history-file "path/to/file")

;; Cider Autocomplete
;(global-company-mode)
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)
;ido-everywhere ;ido-ubiquitous ;ido-flex

; manually actiivated:
;(setq company-idle-delay nil) ; never start completions automatically
;(global-set-key (kbd "M-TAB") #'company-complete) ; use meta+tab, aka C-M-i, as manual trigger


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

;; General Auto-Complete
;(require 'auto-complete-config)
;(setq ac-delay 0.0)
;(setq ac-quick-help-delay 0.5)
;(ac-config-default)

;; ac-nrepl (Auto-complete for the nREPL)
;(require 'ac-nrepl)
;(add-hook 'cider-mode-hook 'ac-nrepl-setup)
;(add-hook 'cider-repl-mode-hook 'ac-nrepl-setup)
;(add-to-list 'ac-modes 'cider-mode)
;(add-to-list 'ac-modes 'cider-repl-mode)
;(add-hook 'cider-mode-hook 'ac-cider-setup) ; anlu
;(ac-cider-setup)

;; Poping-up contextual documentation
;(eval-after-load "cider"
;  '(define-key cider-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc))

;; Cider extra
;(Require 'cider-eval-sexp-fu)

;(global-set-key [f9] 'cider-jack-in)  ; C-c M-j
;(global-set-key [f11] 'speedbar)

;(defun set-auto-complete-as-completion-at-point-function ()
;  (setq completion-at-point-functions '(auto-complete)))

;(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)
;(add-hook 'cider-mode-hook 'set-auto-complete-as-completion-at-point-function)
