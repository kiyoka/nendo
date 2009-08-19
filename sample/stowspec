;;-*- mode: nendo; syntax: scheme -*-;;

(define archive-file-pattern "([a-zA-Z].*)")

;; `regex' is a string ( not a regex object )
;; returns ( $0-string  $1-string  $2-string  $3-string ... )
(define (regex-match regex str)
  (let1 matchdata ((. str match) regex)
    (if matchdata
        (matchdata.to_a.to_list)
        nil)))
;; test
;;(regex-match "^[a-z]+$" "abc")
;;(regex-match "^([a-z]+)([0-9]+)$" "abc123")


(define (get-placeinfo pwd homedir)
  (let1 specdir (+ homedir "/stowspec")
    (let ((m1 (with-match pwd (+ specdir "$") nil))
          (m2 (with-match pwd (+ specdir "/" archive-file-pattern) nil)))
      (cond
       ((eq? pwd homedir)
        `(homedir ,homedir))
       (m1
        `(listdir ,(car m1)))
       (m2
        `(specdir ,(car m2) ,(cadr m2)))
       (else
        nil)))))
  
;; ( pwd . homedir )
(define (get-curpath)
  (cons
   (Dir.pwd)
   (ENV.fetch "HOME")))

(define (display-help homedir)
  (for-each
   print
   `(
     "Usage:"
     ""
     )))

(define (action-by-place)
  (let1 path (get-curpath)
    (let1 placeinfo (get-placeinfo (car path) (cdr path))
      (cond
       ((eq? 'specdir (car placeinfo))
        (build-action 
       ((eq? 'listdir (car placeinfo))
        (for-each
         print
         (filter
          (lambda (x)
            (when (not (x.match "^[.]"))
              x))
          (to-list (Dir.entries (cadr placeinfo))))))
       (else
        (display-help (cdr path)))))))


(define (build-action projname filename tmppath)
  (let1 shfile (+ tmppath "/go.sh")
    (with-open shfile
               (lambda (f)
                 (for-each
                  (lambda (x)
                    (f.puts x))
                  `(
                    ,(sprintf "tar zxf %s" filename)
                    ,(sprintf "find . -name configure" filename)
                    "if $? == 0 ; then"
                    "  echo Error: configure was not found on this software."
                    "  exit 1"
                    "fi"
                    ;; create specfile ( if needed )
                    ;; configure
                    ;; make
                    ;; make install
                    ))))))


(define (tgz-to-name tgz)
  (cond
   ((regex-match (+ "^" archive-file-pattern "(.tar.gz|.tgz|.tar.bz2)$") tgz)
    =>
    (lambda (m)
      (second m)))
   (else
    nil)))

;; test
(when false
  (list
   (tgz-to-name "abc-1.2.3.tar.gz")
   (tgz-to-name "abc-1.2.3.tar.bz2")
   (tgz-to-name "abc-1.2.3.tgz")
   (tgz-to-name "file.txt")))


(define (action-by-arg argv)
  (let* ((m1 (regex-match (+ "^http://.+/" archive-file-pattern "$") (car argv)))
         (m2 (regex-match (+ "^" archive-file-pattern "$") (car argv)))
         (path     (get-curpath))
         (url      (if m1 (car m1) nil))
         (filename (if m1 (cadr m1) (car m2)))
         (projname (tgz-to-name filename))
         (workdir  (sprintf "/tmp/%s" projname)))
    (printf "url      = %s\n" url)
    (printf "filename = %s\n" filename)
    (printf "projname = %s\n" projname)
    (printf "workdir  = %s\n" workdir)
    (make-work-dir workdir)
    (when url
      (download-url url workdir))
    (build-action projname filename workdir)))


;; test
;;(action-by-arg '("a.tar.gz"))
;;(action-by-arg '("http://www.example.com/a.tar.gz"))

(define (main argv)
  (case (length argv)
    ((0)
     (action-by-place))
    (else
     (action-by-arg argv))))
  
(main (cdr ARGV.to_list))

