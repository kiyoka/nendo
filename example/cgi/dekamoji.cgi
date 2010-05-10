#!/bin/sh
:; #-*- mode: nendo; syntax: scheme -*-;;
:; exec /usr/local/bin/nendo $0 $*

(load-library "text/html-lite")
(load-library "text/tree")
(load-library "debug/syslog")
(require "cgi")
(require "RMagick")

;; ------ Please edit for your site -------
(define fontbase "/usr/local/lib/IPAfont-0302/")
;; ----------------------------------------

(define font-list `(
                    ("1" "ゴシック" ,(+ fontbase "ipagp.ttf"))
                    ("2" "明朝"     ,(+ fontbase "ipamp.ttf"))
                    ("3" "あんず"   ,(+ fontbase "APJapanesefont.ttf"))
                    ))
(define default-fonttype 2)

(define default-wording "デカ文字")
(define default-size    2)
(define size-list '(
                    (1 . "サイズ極小")
                    (2 . "サイズ小")
                    (3 . "サイズ中")
                    (4 . "サイズ大")
                    (5 . "サイズ特大")
                    ))

(define (response-dekamoji str pointsize fontpath)
  (define (blur image width)
    (image.blur_channel 0 width Magick::AllChannels))
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
      (set! dr.fill     "#777799")
      (set! dr.stroke   "#8888AA")
      (dr.annotate image1  0 0 5 5 str)
      (let* ((image2 (blur image1 3)))
        (set! dr.fill   "#111111")
        (set! dr.stroke "#606060")
        (dr.annotate image2  0 0 0 0 str)
        (let1 image3 (blur image2 0.5)
          (image3.to_blob))))))


;; -----------------------------------
;; encode & decode
;; -----------------------------------
(define (encode-wording wording)
  (string-join 
   (map
    (lambda (x)
      (+ "%" (sprintf "%02X" x)))
    (to-list (wording.unpack "C*")))
   ""))

(define (decode-wording enc-str)
  (let1 hex-str (enc-str.gsub "%" "")
    (. (. (list hex-str) to_arr) pack "H*")))


;; ----------------------------------
;; top page
;; -----------------------------------
(define (top-page params)
  (define (calc-limit _start val _end)
    (min  (max _start val)  _end))
  (define (get-param params key default-value)
    (if (hash-table-exist? params key)
        (car (to-list (hash-table-get params key)))
        default-value))
  
  (let ((size     (to-i (get-param params "size"    default-size)))
        (wording        (get-param params "w"       #f))
        (fonttype (to-i (get-param params "type"    default-fonttype))))
    (let ((size         (calc-limit 1 size     (length size-list)))
          (fonttype     (calc-limit 1 fonttype (length font-list))))
      `(
        ,(html-doctype)
        ,(html:head
          (html:title "デカ文字作成"))
        ,(html:body
          (html:div :style "text-align: center; "
                    (html:h1 "デカ文字作成")
                    (html:p  "文章を入れて『画像化』ボタンを押して下さい")
                    (html:form  :method "POST" :action "./dekamoji.cgi"
                                (html:input :name "w"       :type "text" :size 60 :value wording)
                                (html:br)
                                (map (lambda (x) (list
                                                  (html:input :name "size"    :type "radio"   :value (car x)
                                                              :CHECKED (eq? (car x) size))
                                                  (cdr x)))
                                     size-list)
                                (html:br)
                                (map (lambda (x) (list
                                                  (html:input :name "type"    :type "radio"   :value (car x)
                                                              :CHECKED (eq? (to-i (car x)) fonttype))
                                                  (second x)))
                                     font-list)
                                (html:br)
                                (html:input :type "submit"  :value "画像化"))
                    (html:hr)
                    (cond
                     (wording
                      (html:img :src (sprintf "./dekamoji.cgi?img=1&size=%d&type=%s&w=%s" size fonttype (encode-wording wording))))
                     (else
                      (html:p "no image")))
                    (html:hr)))))))

(define fontsize-alist '(
                         ("1" . 20)
                         ("2" . 40)
                         ("3" . 80)
                         ("4" . 160)
                         ("5" . 320)
                         ))

;; -----------------------------------
;; entry point
;; -----------------------------------
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
