# Nendo プログラミング言語リファレンスマニュアル

*[English](ReferenceManual.md)*

## はじめに

本マニュアルはRubyかSchemeをある程度把握されている方向けに書かれています。Nendoに興味をお持ちの方のほとんどが、どちらかの言語でプログラミングを経験済みでしょう。従って、RubyかSchemeの知識をお持ちであれば、手短かに仕様を把握するためのリファレンスとして使えるはずです。

SchemeやLispの経験が少ない方は、先に[Tutorial.ja.md](Tutorial.ja.md)でLispでRubyプログラミングする雰囲気をつかむとよいでしょう。

**対応バージョン**: 本マニュアルはNendo version 0.6.5以降に対応しています。

## 表記

本マニュアルでは、以下の記号を使用します。

- `a → b` : aという式がbに評価されます。例: `(* 5 8) → 40`
- `<式>` : `<式>`という箇所には任意の式を適用可能です。例: `(set! <シンボル> <式>)`
- `[式]` : `[式]`は省略可能です。例: `(list [<式>])`、`(get-keyword <key> <kv-list> [<fallback>])`

## 構文

Nendoは、Lispの大多数の方言と同じく、プログラムとデータを表すために、省略なくカッコでくくられた前置記法を使用します。

```lisp
(+ 1 2 3)
; → 6

'(1 2 3)
; → (1 2 3)

(define alist '((key1 . "data1")
                (key2 . "data2")
                (key3 . "data3")))
alist
; → ((key1 . "data1") (key2 . "data2") (key3 . "data3"))
```

## 命名規約

Nendoの組込関数は、ブーリアン値（真偽値）を返す関数は`?`で終ります。変数やデータの内容を破壊する関数は`!`で終わります。

NendoからはRubyのメソッドも呼び出せますが、Rubyには`String`クラスの`clear`メソッドのように、値を破壊するにもかかわらず`!`が付いていないメソッドもあるので注意してください。

```ruby
# 以下はRubyプログラム例
"str".chop!               # 規約通り
"str".is_a?( String )     # 規約通り
"str".clear               # 例外
```

## 字句規約

### 識別子

識別子には以下の文字を使用することができます：
`! $ % & * + - . / : < = > ? @ ^ _ ~`

以下は全て識別子として許されます：
`lambda` `q` `list->vector` `soup` `+` `V17a` `<=?` `a34kTMNs` `the-word-recursion-has-many-meanings`

但し、大文字のAからZで始まる識別子は、コンスタントを示します。
以下は全てコンスタントの識別子として扱われます：
`Class` `File` `Object` `Enumerable::Enumerator`

### キーワード

`:`で始まるシンボルはキーワードという特殊なオブジェクトとなります。
`:a`は`"a"`という値を持つキーワードとなります。
`:`で`""`のようなゼロ文字のキーワードも表現可能です。

キーワードはRubyの`LispKeyword`型として扱われます。`LispKeyword`型は`Symbol`型や`String`型などと継承関係に無いため専用のNendo標準関数を使って相互変換する必要があります（`make-keyword`関数、`keyword->string`関数、`keyword?`関数など）。

### 文字列

`""`で囲われた`"aaa"`のようなトークンは文字列となります。文字列には改行を含めることができ、以下のような文字列リテラルも記述可能です：

```lisp
"1行目
2行目
3行目
"
```

文字列リテラルはRubyの`String`型のオブジェクトとなります。

### 空白文字

空白はトークンを分離します。スペースと改行文字、タブ文字が空白として扱われます。ソースコードの可読性を向上させるためのインデントなどに使用可能です。

### コメント

- `;`文字から行末まではコメントとして扱われます
- `#!`文字から行末まではコメントとして扱われます

コメントは、Nendoからは不可視となります。

### 括弧

`(` `)`丸括弧と`[` `]`角括弧はグループ化とリストの表記のために使用します。括弧の種類が対応していなくてもNendoはエラーなく処理します（ソースコードの可読性は落ちるのでお勧めしません）。

例1：下記二つは等価
```lisp
'(((((a)))))
'[[[[[a]]]]]
```

例2：可読性を上げるために`[` `]`を上手に使う
```lisp
(let [(a 1)
      (b 2)]
  (+ a b))
```

### リテラル（クォート）

`(quote a)`は`a`と評価されます。`(quote a)`は`'a`と略記してもかまいません。

下記は全てリテラルとなります。クォートしなくても元々リテラルのデータに対してクォートしても無効となります：

```lisp
(quote a)
; → a (シンボル)

'a
; → a (シンボル)

1
; → 1 (数値リテラル)

"ABC"
; → "ABC" (文字列リテラル)

'1
; → 1 (数値リテラル)

'"ABC"
; → "ABC" (文字列リテラル)

''a
; → 'a    (クォート自身もクォートされることに注意)
```

### 正規表現リテラル

`#/abc/`はRubyの正規表現リテラル`/abc/`と等価です。大文字小文字判定を無視する`#/abc/i`というサフィックス指定もサポートしています。

```lisp
#/[a-z]/
; → #/[a-z]/

#/Engine/i
; → #/Engine/i

(. #/[a-z]/ class)
; → Regexp
```

### その他

#### ブーリアン値

`#t`、`#f`は真偽値の定数として扱われ、それぞれRubyの`true`、`false`に対応します。入力するS式としては`#t`、`#f`、`true`、`false`のどの表記でもread可能です。Nendoの標準の外部表現は`#t`、`#f`なので、writeは`#t`、`#f`で出力します。

```lisp
'(#t true #f false)
; → (#t #t #f #f)
```

#### nil

Rubyの`nil`と等価です。`nil`は何度評価しても`nil`です。

```lisp
nil
; → nil
```

#### デバッグ出力

`#?=式`は式に副作用を与えずにデバッグ表示呼び出しを埋め込みます。デバッグ表示は`#?=`で始まり、ソースコード上の位置（ファイル名と行番号）と評価結果を表示します。

replで実行した例：
```lisp
nendo> (define a 1)
1
nendo> #?=a
#?="(stdin)":2:a
#?-    1
1
nendo> #?=(+ a #?=a)
#?="(stdin)":3:(+ a (debug-print a "(stdin)" 3 'a))
#?="(stdin)":3:a
#?-    1
#?-    2
2
```

## 式

### 手続き呼び出し

```lisp
(<関数> <引数1> <引数2> ...)
```

`<関数>`はNendoのビルトイン関数とユーザ定義関数を指定します。

例：
```lisp
(+ 1 2 3)
; → 6

(define (func arg1) (+ 1 arg1))
; → #<Proc:0x7ef35c@(stdin):9>

(func 5)
; → 6
```

### Rubyのメソッド呼び出し

```lisp
(<クラスorインスタンス>.メソッド 引数1 引数2 ...)
```

もしくは

```lisp
(. <クラスorインスタンス> メソッド 引数1 引数2 ...)
```

例：
```lisp
(require "date")
; → false

(Date.new 0)
; → 0000-01-01

(. Date new 0)
; → 0000-01-01

(. (Date.new 0) strftime "%x") 
; → "01/01/00"

(require "digest/md5")
; → false

(. (Digest::MD5.hexdigest "source text") split "")
; → ["2", "0", "f", "7", "9", "a", "1", "4", "1", "6", "6", "2", "6",
     "e", "e", "a", "c", "c", "0", "b", "d", "9", "a", "8", "d", "b", "8",
     "7", "f", "a", "a", "2"]
```

### 手続き

#### (lambda <仮引数部> <本体>)

R5RS Schemeの規定通り、固定個数の引数、任意個数の引数、n個以上の手続きを定義して返します。実態はRubyの`Proc`型のインスタンスです。

手続きはオブジェクトであるため、任意の変数に束縛したり、関数の返す値として扱えます。

```lisp
(lambda (a) a)
; → #<Proc:0x000001010d9ab0@(stdin):15>

(define foo (lambda (a) a.to_s))
; → #<Proc:0x00000100c32de0@(stdin):21>

(foo.class)
; → Proc

((lambda (a) (+ 10 a)) 20)
; → 30
```

`<仮引数部>`に`(a b . c)`のようにdot対を指定するとN個〜無限個の引数を取る関数を定義可能です。
`<仮引数部>`に`x`のようにシンボルを指定すると0個〜無限個の引数を取る関数を定義可能です。

#### (define (関数名 <仮引数部>) <本体>)

指定した関数名に`<仮引数部>`と`<本体>`から作成された手続きを定義してバインドします（lambda式に展開されます）。この関数定義は、関数内でもネストして仕様可能です（関数内関数）。

`<仮引数部>`は前述のlambda構文でのルールに加えて、以下のオプショナル引数が指定可能です。

`<仮引数部>`に`(a b :optional (c #f) (d 50))`のように指定すると2個から4個の引数を取る関数を定義可能です。

```lisp
nendo> (define (func1 a b :optional (c #f) (d 50))
         (list a b c d))
; → #<Proc:0x8fa18d0@(stdin):8>

nendo> (func1 1 2)
; → (1 2 #f 50)

nendo> (func1 1 2 3)
; → (1 2 3 50)

nendo> (func1 1 2 3 4)
; → (1 2 3 4)

nendo> (func1 1)
; → Error: wrong number of arguments for closure `func1'
```

### 束縛式

#### (define <シンボル> <式>)

トップレベルで評価されると、Nendoのグローバル変数が定義されます。

例：
```lisp
(define symbol-1 100)
; → 100

symbol-1
; → 100
```

lambda内でdefineが評価されると、ローカル変数として束縛されます。仕組みは以下の通りです。

例：
```lisp
(define (foo x)
  (define result '())
  (define (local-foo1 arg) arg)
  (define a 100)
  (define (local-foo2 arg) arg)

  (+ (local-foo1 1)))
```

コンパイル時にlambdaの内側のdefineはletrecに変換され、ローカル変数への束縛となります。

```lisp
(define foo (lambda (x)
  (letrec ((result '())
           (local-foo1 (lambda (arg) arg))
           (a 100)
           (local-foo2 (lambda (arg) arg)))
    (+ (local-foo1 1)))))
```

#### (set! <シンボル> <式>)

定義済みの変数に代入（値の更新）を行ないます。未定義の変数に適用しようとするとエラーとなります。

ローカル変数を束縛して、その変数が見えるブロックを作り出します。`let`、`let*`、`letrec`、`let1`、`if-let1`が使用できます。

### 条件式

`if`、`cond`、`case`、`and`、`or`、`cond`、`when`、`unless`が使用できます。

#### (if <条件> <式1> [<式2>])

条件が真（`#f`か`nil`以外）の場合`<式1>`が評価され、偽の場合`<式2>`が評価されます。最後に評価された`<式1>`か`<式2>`がifの値となります。条件が偽で`<式2>`が省略された場合は、nilが返ります。

#### (and <式> ...)

R5RS Schemeの仕様通りです。

#### (or <式> ...)

R5RS Schemeの仕様通りです。

### 逐次式

#### (begin <式1> <式2> ...)

各`<式>`が逐次的に左から右へと評価され，最後の`<式>`の（１個または複数個の）値が返されます。この式型は，入出力などの副作用を順序どおりに起こすために使われます。

### 繰り返し

`while`、`until`が使用できます。

### 準引用（準クォート）

Scheme R5RSの規定通りです。`` ` ``、`,`、`,@`をサポートしており、ネストも可能です。ネストの段数に制限はありません。

R5RS Scheme仕様書中の例：
```lisp
`(list ,(+ 1 2) 4)
; → (list 3 4)

(let ((name 'a)) `(list ,name ',name))
; → (list a 'a)

`(a ,(+ 1 2) ,@(map abs '(4 -5 6)) b)
; → (a 3 4 5 6 b)
```

## 組み込みライブラリ

### 等価

#### (eq? <obj> <obj>)

objにはNendoのオブジェクトの他にもRubyのオブジェクトを指定することも可能です。内部はRubyの演算子`equal?`が使用されています。

#### (eqv? <obj> <obj>)

objにはNendoのオブジェクトの他にもRubyのオブジェクトを指定することも可能です。内部はRubyの演算子`==`が使用されています。

#### (equal? <obj> <obj>)

objにはNendoのオブジェクトの他にもRubyのオブジェクトを指定することも可能です。objがlistなどの場合、再帰的に`equal?`を適用して比較します。そうでなければ`eqv?`相当のRuby演算子`==`が使用されます。

### 数値

整数、実数を扱うことができます。数値リテラルはそれぞれ、RubyのFixnum型、Float型になります。

```lisp
nendo> (. 10 class)
; → Fixnum

nendo> (. 0.1 class)
; → Float
```

#### 10進数

`1` `2` `3` `4` `1000` `45093245908`のような表記で10進数の整数リテラルをあらわします。`#d`で始まる数値も10進数を表します。

```lisp
nendo> -1
; → -1

nendo> +1
; → 1

nendo> #d10
; → 10

nendo> #d100
; → 100

nendo> #d0123456789
; → 123456789
```

#### 2進数

```lisp
nendo> #b0
; → 0

nendo> #b01
; → 1

nendo> #b10
; → 2

nendo> #b1111
; → 15
```

#### 8進数

```lisp
nendo> #o0
; → 0

nendo> #o7
; → 7

nendo> #o10
; → 8

nendo> #o11
; → 9
```

#### 16進数

```lisp
nendo> #xf
; → 15

nendo> #x10
; → 16

nendo> #xffff
; → 65535

nendo> #x10000
; → 65536
```

### 論理値

#### (not <obj>)

`<obj>`が`#f`の時のみ`#t`を返し、それ以外の場合は`#f`を返します。

### ペアとリスト

#### (list? <obj>)

R5RS Schemeの仕様通りです。

#### (pair? <obj>)

R5RS Schemeの仕様通りです。

#### (null? <obj>)

R5RS Schemeの仕様通りです。

#### (cons <obj> <obj>)

R5RS Schemeの仕様通りです。

#### (cons* <list> . <obj>)

`list*`は`cons*`の別名です。

```lisp
(list* 1 2 3)
; → (1 2 . 3)

(list* 1)
; → 1
```

#### (iota <数> [<開始値>])

`range`は`iota`の別名です。`<開始値>`から指定した数までの整数リストをリストにして返します。`<開始値>`を省略するとゼロを指定したこととみなされます。

```lisp
(iota 10)
; → (0 1 2 3 4 5 6 7 8 9)

(iota 10 1)
; → (1 2 3 4 5 6 7 8 9 10)

(range 10 1)
; → (1 2 3 4 5 6 7 8 9 10)
```

#### (car <pair>)

consセルのcar部を返します。

#### (cdr <pair>)

consセルのcdr部を返します。

#### (set-car! <pair> <exp>)

consセルのcar部にexpを代入します。

#### (set-cdr! <pair> <exp>)

consセルのcdr部にexpを代入します。

#### (length <list>)

リストの長さを返します。

#### (last-pair <list>)

リストの最後のペアを返します。

#### その他のリスト関数

- `(append <list>)`
- `(reverse <list>)`
- `(memq <obj> <list>)`
- `(memv <obj> <list>)`
- `(member <obj> <list>)`
- `(assq <obj> <list>)`
- `(assv <obj> <list>)`
- `(assoc <obj> <list>)`
- `(assq-ref <obj> <list>)`
- `(assv-ref <obj> <list>)`
- `(assoc-ref <obj> <list>)`

### シンボル

#### (symbol? <obj>)

objがシンボルなら`#t`を返します。

#### (string->symbol <obj>)

`(intern <obj>)`の別名です。文字列をシンボルに変換します。

#### (symbol->string <obj>)

シンボルを文字列に変換します。

#### (gensym)

システムでユニークなシンボルを自動的に生成します。実際には内部で`___gemsym__シーケンス番号`というシンボルが生成され、シーケンス番号がインクリメントされています。

### キーワード

`:`で始まるシンボルはキーワードという特殊なオブジェクトとなります。`:a`は`"a"`という値を持つキーワードとなります。`:`で`""`のようなゼロ文字のキーワードも表現可能です。

- `(keyword? <obj>)`
- `(make-keyword <name>)`
- `(keyword->string <keyword>)`
- `(get-keyword <key> <kv-list> [<fall-back>])`

### 文字列

Nendoでは文字列に関する組み込み関数は少ししか用意していません。RubyのStringクラスのメソッドが豊富にあるため、それを使って文字列操作してください。

#### (sprintf <フォーマット> <引数1> <引数2> ...)

フォーマット文字列を使用した文字列生成。

#### (x->string <obj>)

objを文字列に変換します。objにはRubyのオブジェクトを指定することもできます。その場合、メソッド`to_s`が適用されます。

#### (string-join <list> [<delim>])

文字列のリスト`<list>`を`<delim>`ではさんで連結します。`<delim>`は省略可能です。省略時は空文字列が指定されたとみなされます。

```lisp
(string-join '("aaa" "bbb" "ccc") "/")
; → "aaa/bbb/ccc"

(string-join '("aaa" "bbb" "ccc") "")
; → "aaabbbccc"

(string-join '("aaa" "bbb" "ccc"))
; → "aaabbbccc"
```

### ベクタ

実態はRubyのArrayです。R5RS Schemeの以下の関数群が使用可能です：
`vector?` `make-vector` `vector-length` `vector-copy` `vector-ref` `vector-set!` `vector-equal?` `list->vector` `vector-fill!` `vector->list`

`vector-ref`だけはR5RSから拡張されています。

#### (vector-ref <vec> <index> [<fallback>])

`<vec>`から`<index>`で指定した要素を取り出だします。`<fallback>`が指定されている場合、`<index>`が`<vec>`の範囲外であったなら`<fallback>`に指定した値が返ります。`<fallback>`が指定されていなければ、RuntimeError例外が発生します。

### ハッシュ

実体はRubyのHashです。以下のHash操作関数群はHashから継承されたクラスに対しても適用可能です。GaucheのAPIのサブセットです。

#### (make-hash-table)

Hashのインスタンスを生成します。

その他のハッシュ関数も利用可能です。

### 正規表現

GaucheのAPIのサブセットとなっています。

#### (rxmatch <正規表現> <文字列>)

正規表現を文字列にマッチさせ、結果をRubyのMatchDataインスタンスで返します。

```lisp
(rxmatch #/X(abc)X/ "XXXXabcXXXX")
; → XabcX

(define m (rxmatch #/X(abc)X/ "XXXXabcXXXX")) (m.class)
; → MatchData
```

#### (rxmatch-substring <MatchDataインスタンス> [<index>])

rxmatch関数で得られたMatchDataインスタンスから部分マッチを取りだします。

```lisp
(define m (rxmatch #/X(abc)X/ "XXXXabcXXXX"))
; → XabcX

(rxmatch-substring m 0)
; → "XabcX"

(rxmatch-substring m 1)
; → "abc"
```

### 例外

#### (raise <例外クラス> [<メッセージ>])

内部でRubyの`raise <例外クラス>,<メッセージ>`に変換されます。Rubyが持つ全ての例外クラスを指定可能です。`<メッセージ>`を省略すると、「ファイル名:行番号 raised 例外クラス名」というメッセージを作り出します。

#### (error <"エラーメッセージ文字列"> [<S式>])

明示的にエラーを通知したい時に使用します。エラーメッセージ文字列を表示して、RuntimeError例外を発生させます。S式が指定されている場合は、そのS式を最後に表示します。

```lisp
nendo> (error "Error: message 1")
; → Error: message 1

nendo> (error "Error: message 2" '(a b c d))
; → Error: message 2 (a b c d)
```

#### (errorf <"sprintfのフォーマット文字列"> [<値1>] [<値2>] ...)

明示的にエラーを通知したい時に使用します。エラーメッセージ文字列を表示して、RuntimeError例外を発生させます。sprintfと同様のフォーマット文字列を使用できます。

```lisp
nendo> (errorf "Error: %s and %s" "A" "B")
; → Error: A and B
```

#### (guard (<変数> ((<条件1> <処理1>) ... (else <処理n>))))

Gaucheの高水準のエラー処理フォームguradに似せたAPIです。Gaucheと違い、組み込みコンディションクラスは全てRubyの例外クラスを使用してください（RuntimeErrorやTypeErrorなど）。

例：
```lisp
(guard
 (exc (else (sprintf "Type is [%s]" (exc.class))))
 (error "This is RuntimeError"))
; → "Type is [RuntimeError]"

(guard
 (exc (else (sprintf "Type is [%s]" exc.class)))
 (+ (Array.new) 1))
; → "Type is [TypeError]"
```

#### (unwind-protect <body> <cleanup>)

Gaucheの高水準のエラー処理フォームunwind-protectに似せたAPIです。

`<body>`、`<cleanup>`の順番で実行し、`<body>`の結果を返します。body内で例外が挙がった場合、その例外がunwind-protectフォームを抜ける前に、cleanupが実行されます。例外はunwind-protectフォームの外にはraiseされません。

### 入出力

#### (read)

#### (read-from-string)

#### (write <式>)

#### (write-to-string <式>)

`read`と`write`でオブジェクトの出力と入力が可能です。`write`で出力した外部表現は、`read`で元のデータを復元可能です。すなわち、Nendoで作成したツリー構造のデータをデーターベースなどに保存・復元する手段として`read`と`write`関数が利用できます。但し、Rubyのオブジェクトについては、`read`で元のデータを復元することはできません。

例：
```lisp
nendo> (define v (read))
(a b c)
(a b c)
nendo> v
(a b c)
nendo> (write-to-string v)
"(a b c)"
nendo> (cdr (read-from-string "(symbol1 . symbol2)"))
symbol2
```

#### (load <ファイルパス>)

ファイルをNendoプログラムとしてロードして評価します。

#### (use <ライブラリ名>)

ライブラリをNendoライブラリとしてロードして評価します。`use`はマクロ展開されます。例：`(use a.b.c)`は`(load "a/b/c")`にストレートに展開されます。

表記例：
```lisp
(load "./myscript")
(load "srfi-1")
(load "text/html-lite")
(load "text/tree")

(use srfi-1)
(use text.html-lite)
(use text.tree)
```

Nendoのソースコードの拡張子が省略された場合は、「.nndc」（コンパイル済）ファイル「.nnd」（Nendoスクリプト）ファイル両方の存在チェックが行われ、「.nndc」が優先してロードします。

#### *load-path*

ロードパス文字列のリストです。グローバル変数です。`load`関数と`use`マクロが参照します。Nendoの起動時にRubyの`$LOAD_PATH`の情報がコピーされて作られます。

#### (add-load-path <パス名> [<afterp>])

`*load-path*`に検索パス名を追加します。afterpが`#f`か、未指定の場合は、`*load-path*`の先頭に追加されます。afterpが`#t`の場合は、`*load-path*`の末尾に追加されます。

例：
```lisp
*load-path*
; → ("/a" "/b" "/c")

(add-load-path "/first")
; → ("/first" "/a" "/b" "/c")

(add-load-path "/last" #t)
; → ("/first" "/a" "/b" "/c" "/last")

*load-path*
; → ("/first" "/a" "/b" "/c" "/last")
```

## マクロ

Nendoでは「伝統的なマクロ」と「健全なマクロ」の両方をサポートしています。局所的なマクロ（let-syntax）もサポートしています。マクロはコンパイルフェーズで適用されます。1つのS式に対して全てのマクロ展開が完了するまで、再帰的にマクロ展開が行われます。

### 伝統的なマクロの定義

#### (macro <仮引数部> <本体>)

固定個数の引数、任意個数の引数、n個以上の引数が定義可能です。

### マクロ展開

#### (macroexpand-1 <式>)

`<式>`に含まれるマクロのうち、最初に見つかったマクロを1回だけ展開し、結果を式で返します。

#### (macroexpand <式>)

`<式>`に含まれるマクロのうち、全てのマクロ展開が完了するまで再帰的にマクロ展開し、結果を式で返します。

例：
```lisp
(set! twice (macro (x) (list 'begin x x)))
; → #<Nendo::LispMacro:0x000001011a6998@(stdin):8>

(macroexpand-1 '(twice (+ 1 1)))
; → (begin (+ 1 1) (+ 1 1))

(set! inc (macro (x) (list 'set! x (list '+ x 1))))
; → #<Nendo::LispMacro:0x000001015dd4a8@(stdin):10>

(macroexpand-1 '(inc a))
; → (set! a (+ a 1))

(macroexpand-1 '(twice (twice (inc a))))
; → (begin (twice (inc a)) (twice (inc a)))

(macroexpand   '(twice (twice (inc a))))
; → (begin (begin (set! a (+ a 1)) (set! a (+ a 1))) (begin (set! a (+ a 1)) (set! a (+ a 1))))
```

### 健全なマクロの定義

syntax-rulesはchibi-scheme 0.3の移植です。以下は、chibi-scheme 0.3のREADMEからの抜粋です。

> SYNTAX-RULES macros are provided by default, with the extensions from SRFI-46. In addition, low-level hygienic macros are provided with a syntactic-closures interface, including SC-MACRO-TRANSFORMER, RSC-MACRO-TRANSFORMER, and ER-MACRO-TRANSFORMER.

#### (define-syntax (syntax-rules <リテラル> <ルール1> [<ルール2>] ...))

大域的なマクロを定義します。

#### (let-syntax ((<変数1> (syntax-rules <リテラル> <ルール1> [<ルール2>] ...)) <変数2> (syntax-rules ...)) <式>)

局所的なマクロを定義します。

## Rubyライブラリのアクセス

NendoのLispコードは動的にRubyのコードに変換されながら動作しています。そのため、容易にNendoからRubyの機能にアクセス可能です。

### 準備

#### (require <Rubyのライブラリパス名>)

Rubyでプログラミングする時と同様に、利用するライブラリをrequireします。常に`#f`を返します。

```lisp
(require "pp")
; → #f
```

### Rubyライブラリへのアクセス

Rubyライブラリへのアクセスは、`.`（ドット）演算子を使います。`.`（ドット）の表記ルールには二種類あります。

#### ([<Rubyのオブジェクト>].<メソッド名> <メソッド引数1> <メソッド引数2> ...)

Rubyのオブジェクトにメッセージを送ります。なお、`<Rubyのインスタンス>`が省略された場合は、`Kernel::`を指定したものとみなされます。

```lisp
(define str "abc")
; → "abc"

(str.size)
; → 3

(str.upcase)
; → "ABC"

(str.chop)
; → "ab"

(.printf "%04d\n" 10)
0010
; → nil

(Digest::MD5.hexdigest "buzz buzz buzz")
; → "75ced500ba12b8e25475b9fce170a914"
```

`<Rubyのインスタンス>`には、識別子しか指定できません（`"abc"`や`100`のような数値リテラルは指定できません）。

#### (. <Rubyのオブジェクト> <メソッド名> <メソッド引数1> <メソッド引数2> ...)

`.`（ドット）マクロは、第一引数に`<Rubyのオブジェクト>`を指定することができるため、上記の`(<オブジェクト>.<メソッド>)`形式の表記に比べて柔軟なプログラミングが可能です。

```lisp
(. "str" size)
; → 3

(. (symbol->string 'strstr) size)
; → 6

(. 100 to_s)
; → "100"

(. (. 1234 to_s) size)
; → 4
```

## Lazy

Ruby 2.0からRubyのEnumerator::Lazyが使えます。

#### (ruby-lazy-enabled-platform?)

Enumerator::Lazyが使えるプラットフォームかどうかを判定します。

#### (ruby-lazy <ベクタ>)

vectorをEnumerator::Lazy化します。無効なプラットフォームでは何もせず引数をそのまま返します。

#### (ruby-lazy? <ベクタ>)

vectorがEnumerator::Lazyかどうか判定します。無効なプラットフォームでは常に`#f`です。

## Rubyプログラムへの組み込み

RubyからNendoで書かれたプログラムを簡単に呼び出すことができます。

```ruby
require 'nendo'
```

最初にRubyプログラムで`Nendo::Core`クラスのインスタンスを生成し、`Nendo::Core#loadInitFile`メソッドで初期化します。

```ruby
core = Nendo::Core.new()
core.loadInitFile
```

次に、`Nendo::Core#load`メソッドでNendoで書かれたソースファイルを読み込むか、`Nendo::Core#evalStr()`メソッドでS式を直接評価することでNendoのプログラムを評価します。

```ruby
core.evalStr( '(define (plus10 num) (+ num 10))' )
```

例えば、上記のplus10という関数をRubyから呼び出すには、export-to-rubyを使って外から呼び出せるメソッドとして定義します（Rubyの特異メソッド化）。

```ruby
core.evalStr( '(export-to-ruby plus10)' )
```

exportしたメソッドを呼び出します。

```ruby
core.plus10( 1 )
```

完全なRubyプログラム例：
```ruby
#!/usr/local/bin/ruby

require 'nendo'

def main
  core = Nendo::Core.new()
  core.loadInitFile
  lst = [ "a", "b", "c",
          [ "d", "e" ].to_list
        ].to_list
  core.evalStr( '(define (sexpToString sexp) (write-to-string sexp))' )
  core.evalStr( '(export-to-ruby sexpToString)' )
  core.evalStr( '(use text.tree)' )
  core.evalStr( '(define (treeToString sexp) (tree->string sexp))' )
  core.evalStr( '(export-to-ruby treeToString)' )
  puts core.sexpToString( lst )
  puts core.treeToString( lst )
end

main
```

実行例：
```bash
$ ruby sample.rb 
("a" "b" "c" ("d" "e"))
abcde
```

## ライブラリ

### ライブラリの読み込み

例えば、srfi-1を使う場合は下記のように記述します：

```lisp
(load-library "srfi-1")
(load-library "text.tree")
```

別の書きかたとして、useを使うこともできます：

```lisp
(use srfi-1)
(use text.tree)
```

### サポートライブラリ

#### srfi-1

[SRFI 1: リスト ライブラリ](http://www.chino-js.com/ja/tech/srfi/srfi-1/)

#### srfi-2

[SRFI 2: AND-LET*: ローカル束縛を伴うAND、条件付きLET*特殊フォーム](http://www.chino-js.com/ja/tech/srfi/srfi-2/)

#### srfi-9

[SRFI 9: レコード型の定義](http://www.chino-js.com/ja/tech/srfi/srfi-9/srfi-9.html)

#### srfi-26

[SRFI 26: カリー化を伴わないパラメータ特殊化の記法](http://www.chino-js.com/ja/tech/srfi/srfi-26/) (cut cute)

#### text.html-lite

Gaucheのtext.html-liteをポーティングしたものです。シンプルなHTMLドキュメントの構築に使用します。

#### text.tree

Gaucheのtext.treeをポーティングしたものです。怠惰なテキスト構築に使用します。

#### debug.syslog

`#?=式`による出力先をsyslogに変更します。Webアプリケーションのデバッグ等に利用することを想定しています。

```lisp
(use debug.syslog)
```

#### debug.null

`#?=式`によるデバッグ出力を抑制します。useを記述した以降の`#?=式`はデバッグ出力されなくなります。

```lisp
(use debug.null)
```

#### nendo.test

gauche.testのサブセットです。nendo.testはgauche.testと違い、`(test-error <例外>)`部分にRubyの例外クラスを指定します。

#### rfc.json

Gaucheのrfc.jsonのサブセットです。Gaucheのライブラリでportで受けとる部分が、NendoではFileオブジェクトに置き換わっています。

#### rfc.yaml

rfc.jsonとほぼ同様のAPIを持つYAMLサポートライブラリです。

#### util.list

Gaucheのutil.listのサブセットです。Nendoはマルチメソッドディスパッチ機能が無いので、assoc-refの引数指定順序が逆バージョン等は外してあります。

#### util.match

chibi-schemeの(chibi match)のポーティング版です。ほとんどGaucheのutil.matchと互換であるため、util.matchという名前で置いています。

#### util.combinations

Gaucheのutil.combinationsのポーティング版です。util.matchを使って実装されており、GaucheとAPI互換です。

### Nendo専用ライブラリ

#### (with-open <ファイル名> <手続> [<openモード>])

ファイルをオープンして、ファイルオブジェクトを`<手続>`の引数に渡します。`<手続>`から処理が戻ってきたら、自動的にファイルをクローズします。内部はRubyのFile#openで実現されているため、`<ファイル名>`と`<openモード>`の仕様はRubyのリファレンスマニュアルを確認してください。

例：
```lisp
nendo> (with-open "VERSION.yml" (lambda (f) (f.read)))
; → "---
:major: 0
:minor: 5
:patch: 3
"

nendo> (with-open "VERSION.yml"
          (lambda (f)
             (map
               (lambda (line) (line.chomp))
               (f.readlines))))
; → #("---" ":major: 0" ":minor: 5" ":patch: 3")
```

#### (readlines <IO型>)

RubyのFile#openや`with-open`関数でオープンしたファイルから1行ごとに読み込んでvectorとして返します。

例：
```lisp
nendo> (with-open "VERSION.yml" (lambda (f) (vector->list (readlines f))))
; → ("---" ":major: 0" ":minor: 6" ":patch: 5")
```

**注意**: Ruby 1.9.xでは、readlinesは一度にファイルの最後まで読み込みvectorを返しますが、Ruby 2.0ではreadlines全て読み込まず、Enumerator::Lazy型の遅延vectorを返します。

#### (readchars <IO型>)

RubyのFile#openや`with-open`関数でオープンしたファイルから1文字ごとに読み込んでvectorとして返します。

## その他Scheme R5RSとの違い

### キーワードのサポート

Gaucheと同様に`:abcde`のような表記のキーワード型をサポートしています。

### +演算子

数値同士だけでなく、文字列同士の連結にも使用できます。

### 未実装のスペシャルフォーム

`letrec-syntax`

### 遅延評価

`make-promise` `delay` `force`は実装されていません。

### 継続

継続は実装されていません。すなわち、以下の機能は使えません：
`call-with-current-continuation` `dynamic-wind`

### eval

`(eval <式>)`の形式しかありません。環境は1種類しかないため、環境を指定する第二引数は指定できません。

### ポート

portという概念は未実装です。NendoではRubyのファイルという機能があるので、それをportの代わりに使ってプログラミングします。

以下のような例でportと同様のコーディングが可能です：

```lisp
(STDOUT.print)
(let1 f (StringIO.new "abc")  f.read)
```