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

;; Support some stuff
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

;; Make available
(add-to-list 'auto-mode-alist '("\\.boot\\'" . clojure-mode))
