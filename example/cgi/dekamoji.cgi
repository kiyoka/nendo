#!/bin/sh
:; #-*- mode: nendo; syntax: scheme -*-;;
:; exec /usr/local/bin/nendo $0 $*

(load-library "text/html-lite")
(load-library "text/tree")
(require "cgi")
(require "RMagick")

(define fontbase "/Users/kiyoka/Sites")
(define font-list `(
                    ("1" "ゴシック" ,(+ fontbase "/IPAfont00302/ipag.ttf"))
                    ("2" "明朝"     ,(+ fontbase "/IPAfont00302/ipam.ttf"))
                    ))
(define default-fonttype 2)

(define (response-dekamoji str pointsize fontpath)
  (let* ((font-dots pointsize)
         (margin   (* pointsize 0.3))
         (image    (Magick::Image.new (+ (* str.size font-dots) margin) (+ font-dots margin)))
         (imlist   (Magick::ImageList.new))
         (dr       (Magick::Draw.new)))
    (set! image.background_color "none")
    (set! image.format "PNG")
    (imlist.push image)
    (set! dr.font      fontpath)
    (set! dr.pointsize pointsize)
    (set! dr.fill   "#404040")
    (set! dr.stroke "#080808")
    (set! dr.font_weight Magick::BoldWeight)
    (set! dr.gravity Magick::CenterGravity)
    (dr.annotate imlist 0 0 0 0 str)
    (let1 blur (imlist.blur_image 0.7 0.7)
      (blur.to_blob))))


(define default-wording "デカ文字")
(define default-size    2)
(define size-list '(
                    (1 . "サイズ小")
                    (2 . "サイズ中")
                    (3 . "サイズ大")
                    (4 . "サイズ特大")
                    ))



(define (top-page params)
  (define (calc-limit min val max)
    (let* ((val (if (< val min) min val))
           (val (if (< max val) max val)))
      val))

  (let* ((size (if (hash-table-exist? params "size")
                   (to-i (car (to-list (hash-table-get params "size"))))
                   default-size))
         (wording (if (hash-table-exist? params "w")
                      (car (to-list (hash-table-get params "w")))
                      default-wording))
         (fonttype #?=(if (hash-table-exist? params "type")
                       (to-i (car (to-list (hash-table-get params "type"))))
                       default-fonttype)))
    (let* ((size      (calc-limit 1 size     (length size-list)))
           (fonttype  (calc-limit 1 fonttype (length font-list))))
      `(
        ,(html-doctype)
        ,(html:head
          (html:title "デカ文字作成"))
        ,(html:body
          (html:div :style "text-align: center; "
                    (html:h1 "デカ文字作成")
                    (html:p
                     "下記に文章を入れて『画像化』ボタンを押して下さい")
                    (html:form
                     :method "GET"
                     :action "./dekamoji.cgi"
                     (html:input :name "w"       :type "text" :cols 140 :value wording)
                     (html:br)
                     (map
                      (lambda (x)
                        (list
                         (html:input :name "size"    :type "radio"
                                     :value (car x)
                                     :CHECKED (eq? (car x) size))
                         (cdr x)))
                      size-list)
                     (html:br)
                     (map
                      (lambda (x)
                        (list
                         (html:input :name "type"    :type "radio"
                                     :value (car x)
                                     :CHECKED (eq? (to-i (car x)) fonttype))
                         (second x)))
                      font-list)
                     (html:br)
                     (html:input :type "submit"  :value "画像化"))
                    (html:hr)
                    (html:img :src (sprintf "./dekamoji.cgi?img=1&size=%d&type=%s&w=%s" size fonttype wording))
                    (html:hr)))))))

(define fontsize-alist '(
                         ("1" . 40)
                         ("2" . 80)
                         ("3" . 160)
                         ("4" . 260)
                         ))

(let1 cgi (CGI.new)
  (cond ((hash-table-exist? cgi.params "img")
         (cgi.print
          (cgi.header "image/png"))
         (cgi.print
          (response-dekamoji
           (car (to-list (hash-table-get cgi.params "w")))
           (assv-ref (car (to-list (hash-table-get cgi.params "size")))  fontsize-alist)
           (second #?=(assv-ref (car (to-list (hash-table-get cgi.params "type"))) font-list)))))
        (else
         (cgi.print
          (cgi.header))
         (cgi.print
          (tree->string
           (top-page cgi.params))))))
