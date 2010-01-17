;;
;; Nendo-mode for Emacs
;;
;;  Copyright (c) 2008 Kiyoka Nishiyama
;;
;;

(require 'comint)
(require 'cmuscheme)

;; Custom Variables:
(defgroup nendo nil
  "*Support for editing and evaluation nendo s-exparession."
  :group 'scheme
  :prefix "nendo-"
  :link '(url-link "http://oldtype.sumibi.org/show-page/Nendo"))


(defvar nendo-result-buffer '())

(defun nendo-watch-for-eval-result (string)
  (let ((lines
	 (split-string string "[\r\n]")))
    (mapcar
     (lambda (x) 
       (cond 
	((string= "nendo> " x)
	 (progn
	   ;;(when (not (get-buffer-window-list "*scheme*" t t))
	   (message "%s"  (mapconcat
			   (lambda (e) e)
			   (reverse nendo-result-buffer)
			   "\n"))
	   (setq nendo-result-buffer '())))
	((< 0 (length x))
	 (push x nendo-result-buffer))
	(t
	 nil)))
     lines)))


(define-derived-mode nendo-mode scheme-mode "Nendo mode"
  "Major mode for editing nendo code.
Editing commands are similar to those of 'scheme-mode'."
  (make-local-variable 'scheme-buffer)
  (local-set-key "\C-c\C-e" 'nendo-send-definition)
  (local-set-key "\C-x\C-e" 'nendo-send-last-sexp))

(defun nendo-add-hooks ()
  (when (get-buffer "*scheme*")
    (with-current-buffer (get-buffer "*scheme*")
      (add-hook 'comint-output-filter-functions 'nendo-watch-for-eval-result t t))))

(defun nendo-send-definition ()
  "Send the current definition to the inferior Scheme process."
  (interactive)
  (nendo-add-hooks)
  (scheme-send-definition))

(defun nendo-send-last-sexp ()
  "Send the previous sexp to the inferior Scheme process."
  (interactive)
  (nendo-add-hooks)
  (scheme-send-last-sexp))

;; for compatibility with Emacs 21
(unless (functionp 'read-directory-name)
  (defun read-directory-name (prompt &optional dir default match init)
    (let ((dir (cond (dir dir)
		     ((not init) "")
		     (t default-directory))))
      (read-file-name  prompt dir
		       (or default (if (and init (not (string= init "")))
				       (expand-file-name init dir)
				     ""))
		       match init))))



(provide 'nendo-mode)

;; Local variables:
;; mode: emacs-lisp
;; end:

