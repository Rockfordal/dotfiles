;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Fix
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Fixa ALT för brackets på mac
(if (eq system-type 'darwin)
  (if (boundp 'ns-option-modifier)
      (setq ns-option-modifier nil)))

  ;; Fixa cmd+x på mac
(if (eq system-type 'darwin)
  (if (boundp 'ns-command-modifier)
      (setq ns-command-modifier 'meta)))
