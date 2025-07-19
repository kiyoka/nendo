# Nendo プログラミング言語チュートリアル

*[English](Tutorial.md)*

このチュートリアルは、Nendoプログラミング言語のガイドです。NendoはRuby上でS式プログラミングを行うために設計された言語で、Lispスタイルの構文とRubyの豊富なエコシステムの力を組み合わせています。

## はじめに

NendoはS式でRubyプログラミングを行うためにデザインされた言語です。このチュートリアルはある程度のRuby、Lisp系言語の両方のプログラミング経験があれば楽に読むことができるでしょう。また、Nendoの文法はできるかぎりSchemeに似せてデザインされているため、Schemeでのプログラミング経験があれば、より助けになるでしょう。

もし、RubyにもLispにもあまり馴染みが無い方でも、本チュートリアルを順番に読んでいけば、どのような言語なのかという雰囲気はつかめるはずです。

**対応バージョン**: 本マニュアルはNendo version 0.6.5以降に対応しています。

## REPLの起動（対話シェル）

コマンドラインオプション無しで起動すると `nendo>` というプロンプトが表示され、入力されたS式がNendoのトップレベルの式として評価されます。

```bash
$ nendo
nendo> (+ 1 1)
2
nendo> (+ "1" "1")
"11"
nendo> (iota 10)
(0 1 2 3 4 5 6 7 8 9)
```

## ユーザースクリプトの実行

### スクリプトを指定して実行する方法
```bash
nendo your_script.nnd
```

### ユーザースクリプトをコマンド化する方法（1）
ある程度満足できるプログラムができたら、ユーザースクリプトファイルを単独で起動したくなるでしょう。その場合は、ファイルの先頭に下記のおまじない（3行のシェルトランポリン）を記述して、スクリプトファイルに実行権限を設定してください。

```bash
#!/bin/sh
:; #-*- mode: nendo; syntax: scheme -*-;;
:; exec /usr/local/bin/nendo $0 $*

# ... your code ...
```

**注意**: NendoはスクリプトファイルのエンコードをUTF-8として読み込みます。UTF-8以外のエンコードを使ってプログラミングすることはできません。

### ユーザースクリプトをコマンド化する方法（2）
コマンド化する方法はもう一つあります。こちらの方法でコマンド化すれば、gem buildでgem化しても正しくコマンドラインから実行できるようになります。注意点は、main関数の呼出しが行われなくなることです。スクリプトの最後でmain関数を自前で呼ぶなど対処してください。

```ruby
#!/usr/bin/env ruby
# -*- mode: nendo; syntax: scheme ; coding: utf-8 -*-
require 'nendo'
$LOAD_PATH.push( File.dirname(__FILE__) + "/../lib" )
core = Nendo::Core.new()
core.setArgv( ARGV )
core.loadInitFile
core.evalStr( <<";;END-OF-SCRIPT" )

# ... your code ...

;;END-OF-SCRIPT
```

スクリプトの最後でmain関数を呼ぶ場合、ファイルの最後を以下のように書き換えて下さい。
```lisp
(main *argv*)
;;END-OF-SCRIPT
```

## 簡単な式を評価してみよう

### Schemeに似たsyntax
NendoのsyntaxはSchemeライクです。Schemeに慣れているなら直接その知識を応用することができます。

まずは、ハローワールドです。
```lisp
(print "Hello, World!")
; => Hello, World!

(display "Hello, ")
(display "World!")
(newline)
; => Hello World!
```

文字列を連結するバージョンです。Schemeと違って文字列は `+` 関数で結合できます。
```lisp
(print (+ "Hello, " "World!"))
; => Hello, World!
```

関数定義してみましょう。
```lisp
nendo> (define (hello-world str)
         (print (+ "Hello, " str " World!")))
; => #<Proc:0x7cc688@(stdin):23>
nendo> (hello-world "Nendo")
Hello, Nendo World!
; => "Hello, Nendo World!"
```

文字列のフォーマッティングはRubyではおなじみのprintf系が使えます。
```lisp
nendo> (define str "Nendo")
; => "Nendo"
nendo> (sprintf "Hello, %s World!" str)
; => "Hello, Nendo World!"
```

## Rubyとの連携

NendoはsyntaxこそSchemeですが、使用できる文字列や数値のオブジェクトは全てRubyのオブジェクトそのものです。`.`（ドット）記号を使って、Rubyのインスタンス変数やメソッドにアクセスすることができます。

```lisp
nendo> (define str "abc")
"abc"
nendo> (str.class)
String
nendo> (str.size)
3
nendo> (. str size)
3
nendo> (. "1234" size)
4
```

インスタンスを省略するとKernel::を指定したことになります。
```lisp
nendo> (define f (.open "file.txt"))
#<File:0x00000101463320>
nendo> (f.readline.chomp)
"first line."
```

次は、新しいRubyのインスタンスを生成して使う例です（Dateクラスを生成する例）。
```lisp
(require "date")
(let1 d (Date.new 0)
  (list (d.strftime "%x")
        (d.strftime "%s")))
; => (01/01/00 -62167392000)
```
`(require "date")`はRubyのライブラリを使うための宣言でRubyのrequireと等価です。

Digest::MD5クラスをインスタンス生成せずにクラスメソッドを直接呼び出す例です。
```lisp
nendo> (require "digest/md5")
; => false
nendo> (define digest (Digest::MD5.hexdigest "buzz buzz buzz"))
; => "75ced500ba12b8e25475b9fce170a914"
nendo> digest
; => "75ced500ba12b8e25475b9fce170a914"
```

## スクリプトを作ってみよう

### 階乗を求めるプログラムに挑戦

fact.nndという名前でファイルを作成します。以下のコードを入力して、保存します。

```bash
#!/bin/sh
:; #-*- mode: nendo; syntax: scheme -*-;;
:; exec /usr/local/bin/nendo $0 $*

;; 階乗関数
(define (fact n)
  (if (zero? n)
      1
      (* n (fact (- n 1)))))

(print (fact 5))
```

fact.nndに実行可能フラグを付けて実行します。
```bash
chmod +x ./fact.nnd
$ ./fact.nnd 
120
```

1から5までの階乗を求めて表示するプログラムができました。

1から10までの階乗を求めるには、fact.nndの最後の行のfact関数に与える引数を10に変更します。
```lisp
(print (fact 10))
```

```bash
$ ./fact.nnd 
3628800
```

### もうひとつの階乗プログラム

上記と同様の計算は関数型プログラミングのスタイルを使ってもうすこし簡潔に書くことができます。

5の階乗を求めたい場合は まず1から5の数字を作ります。
```lisp
$ nendo
nendo> (range 5 1)
(1 2 3 4 5)
```
※ `range`は`iota`の別名です

ここまでくれば簡単です。全ての数字をかけ算すれば良いので、applyで`*`関数に引数として渡してしまいましょう。
```lisp
nendo> (apply * (range 5 1))
120
```
求まりました。

※ このapplyの効果は `(* 1 2 3 4 5)` という式を書いたのと同じです。

10の階乗も同じです。
```lisp
nendo> (apply * (range 10 1))
3628800
```

このように、ループや再帰を使わずに、リスト生成と関数適用という形で解決することができます（関数型プログラミングスタイル）。

### コマンドライン引数でパラメータを渡す

main関数を定義すると、引数にコマンドライン引数を受けとることができます。Nendoはスクリプト中にmain関数が存在すれば、起動直後に呼び出します。引数argvの型は文字列のリストです。

**argv.nnd:**
```bash
#!/bin/sh
:; #-*- mode: nendo; syntax: scheme -*-;;
:; exec /usr/local/bin/nendo $0 $*
(define (main argv)
  (write argv)
  (newline))
```

コマンドラインで実行してみます。
```bash
$ nendo argv.nnd a bb ccc
("a" "bb" "ccc")
```

先程出てきたfact.nndをNの階乗を求めるプログラムにしてみましょう。

**fact.nnd:**
```bash
#!/bin/sh
:; #-*- mode: nendo; syntax: scheme -*-;;
:; exec /usr/local/bin/nendo $0 $*

;; 階乗関数
(define (fact n)
  (apply * (range n 1)))

(define (main argv)
  (print (fact (. (car argv) to_i))))
```

実行してみます。
```bash
$ nendo fact.nnd 1
1
$ nendo fact.nnd 2
2
$ nendo fact.nnd 3
6
$ nendo fact.nnd 4
24
$ nendo fact.nnd 5
120
$ nendo fact.nnd 10
3628800
$ nendo fact.nnd 20
2432902008176640000
```

## Rubyのデータ構造を作る

### Array（vector）

RubyのArrayを作るためにはいくつかの方法があります。Nendoのvectorという型はRubyのArrayと等価です。※ vectorはR5RS Schemeで定義されているvectorでもあります。

**listからArrayに変換する:**
```lisp
nendo> (to-arr '(1 2 3))
#(1 2 3)
```

**Arrayからlistに変換する:**
```lisp
nendo> (to-list '#(1 2 3))
(1 2 3)
```

**vectorを作る:**
```lisp
nendo> (define vec '#("a" "b" "C" "d" "e"))
#("a" "b" "C" "d" "e")
nendo> (vec.class)
Array
nendo> (vector-ref vec 2)
"C"
```

### Hash

RubyのHashを作るためにはいくつかの方法があります。

**alistからHashに変換する:**
`alist->hash-table`関数を使ってalistをHashに変換します。
```lisp
nendo> (define assoc-list '( ("a" .  1) ("b" .  2) ("c" .  3) ))
(("a" . 1) ("b" . 2) ("c" . 3))
nendo> (define h1 (alist->hash-table assoc-list))
{"a"=>1, "b"=>2, "c"=>3}
nendo> (h1.class)
Hash
nendo> (hash-table-get h1 "b")
2
nendo> (hash-table-keys h1)
("a" "b" "c")
```

`hash-table->alist`関数を使って、逆変換も可能です。
```lisp
nendo> (hash-table->alist h1)
(("a" . 1) ("b" . 2) ("c" . 3))
```

**hash-table系関数群を使う:**
```lisp
nendo> (define h2 (make-hash-table))
{}
nendo> (hash-table-put! h2 "aa" 11)
11
nendo> (hash-table-put! h2 "bb" 22)
22
nendo> (hash-table-keys h2)
("aa" "bb")
nendo> (h2.class)
Hash
```

## ファイルからの入力

ファイルからデータを1行づつ入力する処理はスクリプトでは頻繁に使います。Nendoでは次のようなイディオムになります。

```lisp
(with-open "textfile"
  (lambda (f)
    (for-each 
      (lambda (line)
        (print (+ "# " line)))
    (readlines f))))
```

※ Ruby 1.9.xでは、readlinesは一度にファイルの最後まで読み込みvectorを返しますが、Ruby 2.0ではreadlines全て読み込まず、Enumerator::Lazy型の遅延vectorを返します。

## 典型的なフィルタ

NendoはRubyのSTDINがそのまま使えます。

```lisp
(for-each
  (lambda (line)
    ;; 出力処理
    (print line))
   STDIN)
```

## Rubyのブロック構文を作る

`&block`構文を使えば、Rubyのブロックそのものが生成可能です。`&block`構文を用意した理由は、多くのRuby gemライブラリがブロックを引数に取るメソッドを持っているためです。

### Rubyコードとの比較で見る

例えば、入力テキストsample.rbの全行をコメントアウトするプログラムは以下のように書くことができます。

**Ruby:**
```ruby
open ( "sample.rb" ) {|f|
  f.readlines.each {|line|
    puts "# " + line
  }
}
```

**Nendo:**
```lisp
(.open "sample.rb"
  (&block (f)
    (f.readlines.each
      (&block (line)
         (print (+ "# " line))))))
```

※ 上記は、`&block`構文を説明するために、故意に`&block`を使用したスタイルで記述しています。通常は、リストとlambdaを使った下記のようなScheme的なスタイルのほうが自然でしょう。

**Nendo（Scheme的なスタイル）:**
```lisp
(with-open "sample.rb"
           (lambda (f)
             (for-each
              (lambda (line)
                (print (+ "# " line)))
              (to-list (f.readlines.to_list)))))
```

また、Nendoのfor-each/map/filter関数はリストの変わりにEnumerable型を取ることができるので次のように記述できます。

**Nendo（Enumerable使用）:**
```lisp
(with-open "sample.rb"
           (lambda (f)
             (for-each
              (lambda (line)
                (print (+ "# " (line.chomp))))
              f)))
```

## デバッグ

Nendoのプログラムをデバッグする手段としては、printデバッグが基本です。手段として専用のリーダーマクロ `#?=` が用意されています。

### マクロ #?=

S式に `#?=` を付けると、その式のソースファイル名、行番号、評価結果が表示されます。また、`#?=` は副作用がありませんので、何処にどれだけ挿入していっても元のコードに影響を与えません（Rubyのp関数に似ていますね）。

**例1:**
```lisp
(define a 100)
100
nendo> (+ #?=a 1)
#?="(stdin)":8:a
#?-    100
101
```

**例2:**

**debug-sample.nnd:**
```lisp
(print
 (map
  (lambda (x)
    #?=(*
        #?=x
        2))
  #?=(range 5)))
```

**実行結果:**
```bash
$ nendo ./debug-sample.nnd 
#?="./debug-sample.nnd":7:(range 5)
#?-    (0 1 2 3 4)
#?="./debug-sample.nnd":4:(* #?=x 2)
#?="./debug-sample.nnd":5:x
#?-    0
#?-    0
#?="./debug-sample.nnd":4:(* #?=x 2)
#?="./debug-sample.nnd":5:x
#?-    1
#?-    2
#?="./debug-sample.nnd":4:(* #?=x 2)
#?="./debug-sample.nnd":5:x
#?-    2
#?-    4
#?="./debug-sample.nnd":4:(* #?=x 2)
#?="./debug-sample.nnd":5:x
#?-    3
#?-    6
#?="./debug-sample.nnd":4:(* #?=x 2)
#?="./debug-sample.nnd":5:x
#?-    4
#?-    8
(0 2 4 6 8)
```

## 次のステップ

このチュートリアルではNendoプログラミングの基礎をカバーしました。より高度なトピックや詳細なリファレンス情報については、[Nendoリファレンスマニュアル](http://oldtype.sumibi.org/show-page/Nendo)を参照し、Nendoリポジトリの`example/`ディレクトリにある例を探求してください。

Nendoでのコーディングを楽しんでください！