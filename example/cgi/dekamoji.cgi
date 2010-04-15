#!/bin/sh
:; #-*- mode: nendo; syntax: scheme -*-;;
:; exec /usr/local/bin/nendo $0 $*

(load-library "text/html-lite")
(load-library "text/tree")
(require "cgi")
(require "RMagick")

;; ------ Please edit for your site -------
(define fontbase "/Users/kiyoka/Sites")
;; ----------------------------------------

(define font-list `(
                    ("1" "ゴシック" ,(+ fontbase "/IPAfont00302/ipagp.ttf"))
                    ("2" "明朝"     ,(+ fontbase "/IPAfont00302/ipamp.ttf"))
                    ))
(define default-fonttype 2)

(define default-wording "デカ文字")
(define default-size    2)
(define size-list '(
                    (1 . "サイズ小")
                    (2 . "サイズ中")
                    (3 . "サイズ大")
                    (4 . "サイズ特大")
                    ))

(define (response-dekamoji str pointsize fontpath)
  (let* ((font-dots pointsize)
         (margin     (* pointsize 0.3))
         (tmp-image  (Magick::Image.new 1 1))
         (dr         (Magick::Draw.new)))
    (set! dr.font      fontpath)
    (set! dr.pointsize pointsize)
    (set! dr.font_weight Magick::BoldWeight)
    (set! dr.gravity Magick::CenterGravity)
    (let* ((metrics (dr.get_multiline_type_metrics tmp-image str))
           (image1   (Magick::Image.new  (+ metrics.width 30) (+ metrics.height 30))))
      (set! image1.format  "PNG")
      (set! dr.fill     "#333344")
      (set! dr.stroke   "#222233")
      (dr.annotate image1  0 0 5 5 str)
      (let* ((image2 (image1.blur_channel 0 3 Magick::AllChannels)))
        (set! dr.fill   "#111111")
        (set! dr.stroke "#606060")
        (dr.annotate image2  0 0 0 0 str)
        (image2.to_blob)))))


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
         (fonttype (if (hash-table-exist? params "type")
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
                     (html:input :name "w"       :type "text" :size 60 :value wording)
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
                         ("4" . 320)
                         ))

(if #f
    ;; testing
    (display
     (response-dekamoji
      "デカ文字"
      80
      (+ fontbase "/IPAfont00302/ipam.ttf")))
    ;; release
    (let1 cgi (CGI.new)
      (cond ((hash-table-exist? cgi.params "img")
             (cgi.print
              (cgi.header "image/png"))
             (cgi.print
              (response-dekamoji
               (car (to-list (hash-table-get cgi.params "w")))
               (assv-ref (car (to-list (hash-table-get cgi.params "size")))  fontsize-alist)
               (second (assv-ref (car (to-list (hash-table-get cgi.params "type"))) font-list)))))
            (else
             (cgi.print
              (cgi.header))
             (cgi.print
              (tree->string
               (top-page cgi.params)))))))
