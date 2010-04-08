#!/bin/sh
:; #-*- mode: nendo; syntax: scheme -*-;;
:; exec /usr/local/bin/nendo $0 $*

(load-library "text/html-lite")
(load-library "text/tree")
(require "cgi")
(require "RMagick")

(define (response-imagetext str pointsize)
  (let* ((font-dots pointsize)
         (margin (* pointsize 0.3))
         (image  (Magick::Image.new (+ (* str.size font-dots) margin) (+ font-dots margin)))
         (imlist (Magick::ImageList.new))
         (dr     (Magick::Draw.new)))
    (set! image.background_color "none")
    (set! image.format "PNG")
    (imlist.push image)
    ;;(set! dr.font "/Volumes/Macintosh HD/Library/Fonts/ホリデイMDJP03")
    ;;(set! dr.font "/Volumes/Macintosh HD/Library/Fonts/みかちゃん")
    (set! dr.font "/Volumes/Macintosh HD/Library/Fonts/ヒラギノ丸ゴ ProN W4.otf")
    (set! dr.pointsize pointsize)
    (set! dr.fill   "#606060")
    (set! dr.stroke "#101010")
    (set! dr.font_weight Magick::BoldWeight)
    (set! dr.gravity Magick::CenterGravity)
    (dr.annotate imlist 0 0 0 0 str)
    (let1 blur (imlist.blur_image 1.0 1.0)
      (blur.to_blob))))


(define default-wording "文章を画像化するサイト")
(define default-size    1)

(define (top-page params)
  (let* ((size (if (hash-table-exist? params "size")
                   (to-i (car (to-list (hash-table-get params "size"))))
                   default-size))
         (wording (if (hash-table-exist? params "w")
                      (car (to-list (hash-table-get params "w")))
                      default-wording)))
    `(
      ,(html-doctype)
      ,(html:head
        (html:title "文章を画像化するサイト"))
      ,(html:body
        (html:div :style "text-align: center; "
                  (html:h1 "文章を画像化するサイト")
                  (html:p
                   "下記に好きな文章を入力して『画像化』ボタンを押して下さい")
                  (html:form
                   :method "GET"
                   :action "./imagetext.cgi"
                   (html:input :name "w"       :type "text" :cols 140 :value wording)
                   (html:input :type "submit"  :value "画像化")
                   (html:input :name "size"    :type "radio" :value 1 :CHECKED #t) "サイズ小"
                   (html:input :name "size"    :type "radio" :value 2)             "サイズ中"
                   (html:input :name "size"    :type "radio" :value 3)             "サイズ大"
                   (html:input :name "size"    :type "radio" :value 4)             "サイズ特大")
                  (html:hr)
                  (html:img :src (sprintf "./imagetext.cgi?img=1&size=%d&w=%s" size wording))
                  (html:hr))))))
  

(define size-alist '(
                     ("1" . 20)
                     ("2" . 40)
                     ("3" . 60)
                     ("4" . 100)
                     ))

(let1 cgi (CGI.new)
  (cond ((hash-table-exist? cgi.params "img")
         (cgi.print
          (cgi.header "image/png"))
         (cgi.print
          (response-imagetext
           (car (to-list (hash-table-get cgi.params "w")))
           (assv-ref (car (to-list (hash-table-get cgi.params "size")))  size-alist))))
        (else
         (cgi.print
          (cgi.header))
         (cgi.print
          (tree->string
           (top-page cgi.params))))))
