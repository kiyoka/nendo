# Nendo

*[English](README.md)*

NendoはRuby環境上に構築された動的プログラミング言語です。Ruby用のマクロ言語になるようにデザインされています。NendoはRuby環境全体への簡単なアクセスを提供します。

NendoはLisp方言のひとつです。`nendo`は日本語で粘土を意味します。Lispプログラミングは粘土細工を思い起こさせます。Nendoを使う時に粘土で遊んでいるような感覚を感じていただければと思います。

## 特徴

- **Schemeに近いシンタックス**: S式を使用することで、Rubyでは禁じ手として封印されていた本物のマクロが使える
- **Rubyへの直接アクセス**: ドット(.)シンタックスを使ってRubyの標準ライブラリやgemsにアクセス可能
- **リスト処理向き**: 複雑なデータ構造やツリー操作に強力
- **簡単インストール**: PureRuby実装 - gemをインストールするだけ

## サポートライブラリ

### SRFIs
- [SRFI 1: List Library](http://srfi.schemers.org/srfi-1/srfi-1.html) (map, filter, fold, ...)
- [SRFI 2: AND-LET*](http://srfi.schemers.org/srfi-2/srfi-2.html)
- [SRFI 8: RECEIVE](http://srfi.schemers.org/srfi-8/srfi-8.html)
- [SRFI 9: Defining Record Types](http://srfi.schemers.org/srfi-9/srfi-9.html)
- [SRFI 26: Notation for Specializing Parameters](http://srfi.schemers.org/srfi-26/srfi-26.html) (cut, cute)
- [SRFI 46: Basic Syntax-rules Extensions](http://srfi.schemers.org/srfi-46/srfi-46.html)
- [SRFI 61: A more general COND clause](http://srfi.schemers.org/srfi-61/srfi-61.html)
- [SRFI 69: Basic hash tables](http://srfi.schemers.org/srfi-69/srfi-69.html)

### chibi-schemeおよびGaucheから移植
- text.html-lite - シンプルなHTML文書構築
- text.tree - 遅延テキスト構築
- nendo.test - ユニットテスト (gauche.testのサブセット)
- rfc.json - JSON解析・構築
- util.list - 追加リストライブラリ
- util.match - パターンマッチング (chibi-scheme 0.3から移植)
- util.combinations - 組み合わせライブラリ

## インストール

### 必要要件
- Ruby 1.9.3, 2.0.0, 2.1.0, 2.2.0+
- JRuby 1.6.2+

### RubyGemsからインストール
```bash
gem install nendo
```

## サンプル

### Hello World
```lisp
(print (+ "Hello " "World!"))
; => Hello World!
```

### 偶数フィルタ
```lisp
(filter
 (lambda (n)
   (= (% n 2) 0))
 '(1 2 3 4 5 6 7 8 9 10))
; => (2 4 6 8 10)
```

### Rubyライブラリへのアクセス
```lisp
(require "date")
(let1 d (Date.new 0)
  (list (d.strftime "%x")
        (d.strftime "%s")))
```

### マクロの定義
```lisp
(define when (macro form
   `(if ,(car form) (begin ,@(cdr form)))))
```

## Rubyユーザーから見たNendo

- **S式構文**: 本物のマクロと強力なDSL構築が可能
- **リスト処理**: オブジェクト指向的アプローチが向かない複雑なデータ構造に最適
- **シームレスなRuby統合**: Ruby エコシステム全体にアクセス可能

### 構文がS式
構文はS式であるためLisp系言語の本物のmacroを使うことができます。DSLもマクロで構築可能です。
RubyのDSLに限界を感じた方は、Rubyでは禁じ手として封印されていた本物のmacroでのコード圧縮が可能です。

### リスト処理向き
ツリー構造を操作するような複雑なデータ構造にはRubyのオブジェクト指向的アプローチが向かないこともあります。
その部分に限定してリスト処理を得意とするNendoを使えば強力な武器になります。

## Lispユーザーから見たNendo

- **Rubyの膨大なライブラリ群**: 全てのgemとRubyライブラリにアクセス可能
- **クラウド環境対応**: HerokuなどのRubyベースPaaS プラットフォームで動作
- **簡単インストール**: PureRuby実装、複雑な依存関係なし

### Rubyの膨大なライブラリが使える
Ruby上にインタプリタを構築しているため、gemの資産が全て使えます。
多くのSchemeやCommon Lisp処理系では人手の問題で、最新のWebAPIやデータベースへのアダプタの整備が遅れがちです。

### Cloud環境で使える
HerokuなどのRubyをベースとしたPaaS環境でS式によるWebアプリケーション開発が可能です。
多くのSchemeやCommon Lisp処理系はPaaS環境でサポートされていないため、Amazon EC2などのIaaS(仮想環境)を使わざるを得ません。

### インストールが容易
NendoはPureRubyでできています。
Ruby 1.9系環境で nendoのgemを追加インストールするだけです。

## ソースコードと開発

- [GitHubリポジトリ](http://github.com/kiyoka/nendo)
- [Travis CI](http://travis-ci.org/#!/kiyoka/nendo/builds/79961)

## Nendoで書かれたプロジェクト

- [sekka](http://github.com/kiyoka/sekka) - 日本語入力システム
- [stowspec](http://github.com/kiyoka/stowspec) - テストフレームワーク
- [dekamoji](http://github.com/kiyoka/dekamoji) - ASCII アートジェネレータ

## ドキュメント

- [マニュアルとチュートリアル](http://oldtype.sumibi.org/show-page/Nendo)

## ライセンス

このソフトウェアはオープンソースで、BSDスタイルライセンスでカバーされています。付属のCOPYINGファイルをお読みください。