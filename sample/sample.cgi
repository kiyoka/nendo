#!/bin/sh
:; #-*- mode: nendo; syntax: scheme -*-;;
:; exec /usr/local/bin/nendo $0 $*

(load-library "text/html-lite")
(load-library "text/tree")
(require "cgi")

(define (params-list-page cgi)
  `(
    ,(html-doctype)
    ,(html:head
      (html:title "CGI parameter list"))
    ,(html:body
      (html:h1 "CGI parameter list")
      (html:table :border 1
                  (for-each
                   (lambda (x)
                     (html:tr
                      (html:td x)))
                   (to-list (cgi.params.keys)))))))

(let1 cgi (CGI.new)
  (cgi.print
   (cgi.header))
  (cgi.print
   (tree->string
    (params-list-page cgi))))
