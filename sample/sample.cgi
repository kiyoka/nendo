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
                  (html:tr
                   (html:th "key")
                   (html:th "value"))
                  (hash-table-for-each cgi.params
                    (lambda (key value)
                      (html:tr
                       (html:td key)
                       (html:td (string-join value.to_list "/")))))))))
                       

(let1 cgi (CGI.new)
  (cgi.print
   (cgi.header))
  (cgi.print
   (tree->string
    (params-list-page cgi))))
