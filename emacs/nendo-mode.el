;;
;; Nendo-mode for Emacs
;;
;;  Copyright (c) 2010 Kiyoka Nishiyama
;;
;; Redistribution and use in source and binary forms, with or without
;; modification, are permitted provided that the following conditions
;; are met:
;;
;; 1. Redistributions of source code must retain the above copyright
;;    notice, this list of conditions and the following disclaimer.
;;
;; 2. Redistributions in binary form must reproduce the above copyright
;;    notice, this list of conditions and the following disclaimer in the
;;    documentation and/or other materials provided with the distribution.
;;
;; 3. Neither the name of the authors nor the names of its contributors
;;    may be used to endorse or promote products derived from this
;;    software without specific prior written permission.
;;
;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
;; "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
;; LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
;; A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
;; OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
;; SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
;; TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
;; PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
;; LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
;; NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
;; SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
;;
;;
;; Please add follows to .emacs
;;  (setq scheme-program-name "nendo")
;;  (autoload 'scheme-mode "cmuscheme" "Major mode for Scheme." t)
;;  (autoload 'run-scheme "cmuscheme" "Run an inferior Scheme process." t)
;;  (require 'nendo-mode)


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
	 (when (not (get-buffer-window-list "*scheme*" t t))
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
  (modify-coding-system-alist 'process "nendo" '(utf-8 . utf-8))
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


;;
;; Indent width settings
;;    port from gauche-mode.el by OOHASHI Daichi <leque@katch.ne.jp>
;; 
(mapc #'(lambda (s)
	  (put (car s) 'scheme-indent-function (cdr s)))
      '(
	(&block . 1)
	(and-let* . 1)
	(begin0 . 0)
	(call-with-builder . 1)
	(call-with-cgi-script . 1)
	(call-with-client-socket . 1)
	(call-with-ftp-connection . 1)
	(call-with-input-conversion . 1)
	(call-with-input-file . 1)
	(call-with-input-process . 1)
	(call-with-input-string . 1)
	(call-with-iterator . 1)
	(call-with-iterators . 1)
	(call-with-output-conversion . 1)
	(call-with-output-file . 1)
	(call-with-output-process . 1)
	(call-with-output-string . 0)
	(call-with-process-io . 1)
	(call-with-string-io . 1)
	(call-with-temporary-file . 1)
	(call-with-values . 1)
	(dolist . 1)
	(dotimes . 1)
	(guard . 1)
	(hash-table-for-each . 1)
	(if-let1 . 2)
	(if-match . 2)
	(let*-values . 1)
	(let-args . 2)
	(let-keywords . 2)
	(let-keywords* . 2)
	(let-match . 2)
	(let-optionals* . 2)
	(let-values . 1)
	(let-syntax . 1)
	(letrec-syntax . 1)
	(let1 . 2)
	(let/cc . 1)
	(make . 1)
	(make-parameter . 1)
	(match . 1)
	(parameterize . 1)
	(parse-options . 1)
	(pre-pose-order . 1)
	(rlet1 . 2)
	(receive . 2)
	(rxmatch-case . 1)
	(rxmatch-cond . 0)
	(rxmatch-if  . 4)
	(rxmatch-let . 2)
	(syntax-rules . 1)
	(unless . 1)
	(until . 1)
	(unwind-protect . 1)
	(when . 1)
	(while . 1)
	(with-builder . 1)
	(with-error-handler . 1)
	(with-exception-handler . 1)
	(with-error-to-port . 1)
	(with-input-conversion . 1)
	(with-input-from-port . 1)
	(with-input-from-file . 1)
	(with-input-from-process . 1)
	(with-input-from-string . 1)
	(with-iterator . 1)
	(with-locking-mutex . 1)
	(with-module . 1)
	(with-output-conversion . 1)
	(with-output-to-file . 1)
	(with-output-to-port . 1)
	(with-output-to-process . 1)
	(with-port-locking . 1)
	(with-ports . 3)
	(with-signal-handlers . 1)
	(with-string-io . 1)
	(with-time-counter . 1)
	;; R6RS
	(call-with-bytevector-output-port . 0)
	(call-with-current-continuation . 0)
	(call-with-port . 1)
	(call-with-string-output-port . 0)
	(call/cc . 0)
	(datum->syntax . 1)
	(define-condition-type . 2)
	(define-enumeration . 1)
	(define-record-type . 1)
	(dynamic-wind . 0)
	(identifier-syntax . 0)
	(library . 1)
	(letrec* . 1)
	(with-syntax . 1)
	))


(provide 'nendo-mode)

;; Local variables:
;; mode: emacs-lisp
;; end:

