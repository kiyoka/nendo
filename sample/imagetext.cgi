#!/bin/sh
:; #-*- mode: nendo; syntax: scheme -*-;;
:; exec /usr/local/bin/nendo $0 $*

(load-library "text/html-lite")
(load-library "text/tree")
(require "cgi")
(require "RMagick")


(define (params-list-page cgi)
  `(
    ,(html-doctype)
    ,(html:head
      (html:title "文章を画像化するサイト"))
    ,(html:body
      (html:h1 "文章を画像化するサイト")
      (html:p
       "下記に好きな文章を入力して『画像化』ボタンを押して下さい")
      (html:form
       :method "GET"
       :action "."
       (html:input :name "srctext" :type "text" :cols 140 :value "文章を画像化するサイト")
       (html:input :type "submit" :value "画像化")))))

(let1 cgi (CGI.new)
  (cgi.print
   (cgi.header))
  (cgi.print
   (tree->string
    (params-list-page cgi))))

