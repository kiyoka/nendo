# Nendo Programming Language Reference Manual

*[日本語版 / Japanese](ReferenceManual.ja.md)*

## Introduction

This manual is written for those who have some understanding of either Ruby or Scheme. Most people interested in Nendo will have programming experience with one of these languages. Therefore, if you have knowledge of Ruby or Scheme, you should be able to use this as a reference to quickly grasp the specifications.

If you have little experience with Scheme or Lisp, you should first get a feel for Lisp programming on Ruby with [Tutorial.md](Tutorial.md).

**Compatible Version**: This manual corresponds to Nendo version 0.6.5 and later.

## Notation

This manual uses the following symbols:

- `a → b` : Expression a evaluates to b. Example: `(* 5 8) → 40`
- `<expression>` : Any expression can be applied to `<expression>`. Example: `(set! <symbol> <expression>)`
- `[expression]` : `[expression]` is optional. Example: `(list [<expression>])`, `(get-keyword <key> <kv-list> [<fallback>])`

## Syntax

Nendo, like most Lisp dialects, uses fully parenthesized prefix notation to represent both programs and data.

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

## Naming Conventions

Nendo's built-in functions that return boolean values end with `?`. Functions that destructively modify variables or data end with `!`.

Ruby methods can also be called from Nendo, but note that Ruby has methods like the `clear` method of the `String` class that destructively modify values without having `!` attached.

```ruby
# Ruby program examples
"str".chop!               # Follows convention
"str".is_a?( String )     # Follows convention
"str".clear               # Exception
```

## Lexical Conventions

### Identifiers

The following characters can be used in identifiers:
`! $ % & * + - . / : < = > ? @ ^ _ ~`

All of the following are permitted as identifiers:
`lambda` `q` `list->vector` `soup` `+` `V17a` `<=?` `a34kTMNs` `the-word-recursion-has-many-meanings`

However, identifiers beginning with uppercase letters A through Z indicate constants.
All of the following are treated as constant identifiers:
`Class` `File` `Object` `Enumerable::Enumerator`

### Keywords

Symbols beginning with `:` become special objects called keywords.
`:a` becomes a keyword with the value `"a"`.
Zero-character keywords like `:""` can also be expressed.

Keywords are treated as Ruby's `LispKeyword` type. Since `LispKeyword` type has no inheritance relationship with `Symbol` type or `String` type, dedicated Nendo standard functions are needed for mutual conversion (`make-keyword` function, `keyword->string` function, `keyword?` function, etc.).

### Strings

Tokens like `"aaa"` enclosed in `""` become strings. Strings can include newlines, and string literals like the following can be written:

```lisp
"Line 1
Line 2
Line 3
"
```

String literals become Ruby `String` type objects.

### Whitespace

Whitespace separates tokens. Spaces, newline characters, and tab characters are treated as whitespace. They can be used for indentation to improve source code readability.

### Comments

- From `;` character to end of line is treated as a comment
- From `#!` character to end of line is treated as a comment

Comments are invisible to Nendo.

### Parentheses

`(` `)` round parentheses and `[` `]` square brackets are used for grouping and list notation. Nendo processes without error even if parenthesis types don't correspond (though this hurts source code readability and is not recommended).

Example 1: The following two are equivalent
```lisp
'(((((a)))))
'[[[[[a]]]]]
```

Example 2: Using `[` `]` skillfully to improve readability
```lisp
(let [(a 1)
      (b 2)]
  (+ a b))
```

### Literals (Quote)

`(quote a)` evaluates to `a`. `(quote a)` can be abbreviated as `'a`.

All of the following become literals. Quoting data that is already literal has no effect:

```lisp
(quote a)
; → a (symbol)

'a
; → a (symbol)

1
; → 1 (numeric literal)

"ABC"
; → "ABC" (string literal)

'1
; → 1 (numeric literal)

'"ABC"
; → "ABC" (string literal)

''a
; → 'a    (note that the quote itself is also quoted)
```

### Regular Expression Literals

`#/abc/` is equivalent to Ruby's regular expression literal `/abc/`. Suffix specifications like `#/abc/i` that ignore case sensitivity are also supported.

```lisp
#/[a-z]/
; → #/[a-z]/

#/Engine/i
; → #/Engine/i

(. #/[a-z]/ class)
; → Regexp
```

### Other

#### Boolean Values

`#t` and `#f` are treated as boolean constants, corresponding to Ruby's `true` and `false` respectively. For input S-expressions, any notation `#t`, `#f`, `true`, `false` can be read. Nendo's standard external representation is `#t`, `#f`, so write outputs with `#t`, `#f`.

```lisp
'(#t true #f false)
; → (#t #t #f #f)
```

#### nil

Equivalent to Ruby's `nil`. `nil` evaluates to `nil` no matter how many times it's evaluated.

```lisp
nil
; → nil
```

#### Debug Output

`#?=expression` embeds debug display calls without side effects on the expression. Debug display begins with `#?=` and shows the position in source code (filename and line number) and evaluation result.

Example executed in repl:
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

## Expressions

### Procedure Calls

```lisp
(<function> <argument1> <argument2> ...)
```

`<function>` specifies Nendo's built-in functions and user-defined functions.

Example:
```lisp
(+ 1 2 3)
; → 6

(define (func arg1) (+ 1 arg1))
; → #<Proc:0x7ef35c@(stdin):9>

(func 5)
; → 6
```

### Ruby Method Calls

```lisp
(<class-or-instance>.method argument1 argument2 ...)
```

or

```lisp
(. <class-or-instance> method argument1 argument2 ...)
```

Example:
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

### Procedures

#### (lambda <formal-arguments> <body>)

As specified in R5RS Scheme, defines and returns procedures taking a fixed number of arguments, variable number of arguments, or n or more arguments. The implementation is an instance of Ruby's `Proc` type.

Since procedures are objects, they can be bound to arbitrary variables or treated as return values of functions.

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

Specifying a dot pair like `(a b . c)` in `<formal-arguments>` allows defining functions that take N to infinite arguments.
Specifying a symbol like `x` in `<formal-arguments>` allows defining functions that take 0 to infinite arguments.

#### (define (function-name <formal-arguments>) <body>)

Defines and binds a procedure created from `<formal-arguments>` and `<body>` to the specified function name (expanded to lambda expression). This function definition can be nested within functions (inner functions).

In addition to the lambda syntax rules mentioned above, `<formal-arguments>` can specify the following optional arguments.

Specifying `(a b :optional (c #f) (d 50))` in `<formal-arguments>` allows defining functions that take 2 to 4 arguments.

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

### Binding Expressions

#### (define <symbol> <expression>)

When evaluated at top level, defines Nendo global variables.

Example:
```lisp
(define symbol-1 100)
; → 100

symbol-1
; → 100
```

When define is evaluated within lambda, it binds as local variables. The mechanism is as follows.

Example:
```lisp
(define (foo x)
  (define result '())
  (define (local-foo1 arg) arg)
  (define a 100)
  (define (local-foo2 arg) arg)

  (+ (local-foo1 1)))
```

At compile time, define inside lambda is converted to letrec, becoming binding to local variables.

```lisp
(define foo (lambda (x)
  (letrec ((result '())
           (local-foo1 (lambda (arg) arg))
           (a 100)
           (local-foo2 (lambda (arg) arg)))
    (+ (local-foo1 1)))))
```

#### (set! <symbol> <expression>)

Assigns (updates values) to already defined variables. Attempting to apply to undefined variables results in an error.

Binds local variables and creates blocks where those variables are visible. `let`, `let*`, `letrec`, `let1`, `if-let1` can be used.

### Conditional Expressions

`if`, `cond`, `case`, `and`, `or`, `cond`, `when`, `unless` can be used.

#### (if <condition> <expression1> [<expression2>])

When the condition is true (other than `#f` or `nil`), `<expression1>` is evaluated, and when false, `<expression2>` is evaluated. The last evaluated `<expression1>` or `<expression2>` becomes the value of if. When the condition is false and `<expression2>` is omitted, nil is returned.

#### (and <expression> ...)

As specified in R5RS Scheme.

#### (or <expression> ...)

As specified in R5RS Scheme.

### Sequential Expressions

#### (begin <expression1> <expression2> ...)

Each `<expression>` is evaluated sequentially from left to right, and the value(s) of the last `<expression>` are returned. This expression type is used to cause side effects like input/output in order.

### Iteration

`while`, `until` can be used.

### Quasiquote

As specified in Scheme R5RS. Supports `` ` ``, `,`, `,@` with nesting possible. There is no limit to the number of nesting levels.

Examples from R5RS Scheme specification:
```lisp
`(list ,(+ 1 2) 4)
; → (list 3 4)

(let ((name 'a)) `(list ,name ',name))
; → (list a 'a)

`(a ,(+ 1 2) ,@(map abs '(4 -5 6)) b)
; → (a 3 4 5 6 b)
```

## Built-in Libraries

### Equivalence

#### (eq? <obj> <obj>)

obj can specify Ruby objects in addition to Nendo objects. Internally uses Ruby's `equal?` operator.

#### (eqv? <obj> <obj>)

obj can specify Ruby objects in addition to Nendo objects. Internally uses Ruby's `==` operator.

#### (equal? <obj> <obj>)

obj can specify Ruby objects in addition to Nendo objects. When obj is a list etc., recursively applies `equal?` for comparison. Otherwise uses Ruby's `==` operator equivalent to `eqv?`.

### Numbers

Can handle integers and real numbers. Numeric literals become Ruby's Fixnum type and Float type respectively.

```lisp
nendo> (. 10 class)
; → Fixnum

nendo> (. 0.1 class)
; → Float
```

#### Decimal Numbers

Decimal integer literals are represented by notation like `1` `2` `3` `4` `1000` `45093245908`. Numbers beginning with `#d` also represent decimal numbers.

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

#### Binary Numbers

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

#### Octal Numbers

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

#### Hexadecimal Numbers

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

### Boolean Values

#### (not <obj>)

Returns `#t` only when `<obj>` is `#f`, otherwise returns `#f`.

### Pairs and Lists

#### (list? <obj>)

As specified in R5RS Scheme.

#### (pair? <obj>)

As specified in R5RS Scheme.

#### (null? <obj>)

As specified in R5RS Scheme.

#### (cons <obj> <obj>)

As specified in R5RS Scheme.

#### (cons* <list> . <obj>)

`list*` is an alias for `cons*`.

```lisp
(list* 1 2 3)
; → (1 2 . 3)

(list* 1)
; → 1
```

#### (iota <number> [<start-value>])

`range` is an alias for `iota`. Returns a list of integers from `<start-value>` to the specified number. If `<start-value>` is omitted, zero is assumed.

```lisp
(iota 10)
; → (0 1 2 3 4 5 6 7 8 9)

(iota 10 1)
; → (1 2 3 4 5 6 7 8 9 10)

(range 10 1)
; → (1 2 3 4 5 6 7 8 9 10)
```

#### (car <pair>)

Returns the car part of a cons cell.

#### (cdr <pair>)

Returns the cdr part of a cons cell.

#### (set-car! <pair> <exp>)

Assigns exp to the car part of a cons cell.

#### (set-cdr! <pair> <exp>)

Assigns exp to the cdr part of a cons cell.

#### (length <list>)

Returns the length of a list.

#### (last-pair <list>)

Returns the last pair of a list.

#### Other List Functions

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

### Symbols

#### (symbol? <obj>)

Returns `#t` if obj is a symbol.

#### (string->symbol <obj>)

Alias for `(intern <obj>)`. Converts a string to a symbol.

#### (symbol->string <obj>)

Converts a symbol to a string.

#### (gensym)

Automatically generates a system-unique symbol. Actually generates a symbol `___gemsym__sequence-number` internally and increments the sequence number.

### Keywords

Symbols beginning with `:` become special objects called keywords. `:a` becomes a keyword with the value `"a"`. Zero-character keywords like `:""` can also be expressed.

- `(keyword? <obj>)`
- `(make-keyword <name>)`
- `(keyword->string <keyword>)`
- `(get-keyword <key> <kv-list> [<fall-back>])`

### Strings

Nendo provides only a few built-in functions for strings. Since Ruby's String class has abundant methods, use those for string manipulation.

#### (sprintf <format> <argument1> <argument2> ...)

String generation using format strings.

#### (x->string <obj>)

Converts obj to a string. Ruby objects can also be specified for obj. In that case, the `to_s` method is applied.

#### (string-join <list> [<delim>])

Concatenates a list of strings `<list>` separated by `<delim>`. `<delim>` is optional. If omitted, an empty string is assumed.

```lisp
(string-join '("aaa" "bbb" "ccc") "/")
; → "aaa/bbb/ccc"

(string-join '("aaa" "bbb" "ccc") "")
; → "aaabbbccc"

(string-join '("aaa" "bbb" "ccc"))
; → "aaabbbccc"
```

### Vectors

The implementation is Ruby's Array. The following R5RS Scheme function groups are available:
`vector?` `make-vector` `vector-length` `vector-copy` `vector-ref` `vector-set!` `vector-equal?` `list->vector` `vector-fill!` `vector->list`

Only `vector-ref` is extended from R5RS.

#### (vector-ref <vec> <index> [<fallback>])

Extracts the element specified by `<index>` from `<vec>`. If `<fallback>` is specified and `<index>` is outside the range of `<vec>`, the value specified in `<fallback>` is returned. If `<fallback>` is not specified, a RuntimeError exception occurs.

### Hashes

The implementation is Ruby's Hash. The following Hash operation function groups can also be applied to classes inherited from Hash. It's a subset of Gauche's API.

#### (make-hash-table)

Creates an instance of Hash.

Other hash functions are also available.

### Regular Expressions

A subset of Gauche's API.

#### (rxmatch <regular-expression> <string>)

Matches a regular expression to a string and returns the result as a Ruby MatchData instance.

```lisp
(rxmatch #/X(abc)X/ "XXXXabcXXXX")
; → XabcX

(define m (rxmatch #/X(abc)X/ "XXXXabcXXXX")) (m.class)
; → MatchData
```

#### (rxmatch-substring <MatchData-instance> [<index>])

Extracts partial matches from MatchData instances obtained with the rxmatch function.

```lisp
(define m (rxmatch #/X(abc)X/ "XXXXabcXXXX"))
; → XabcX

(rxmatch-substring m 0)
; → "XabcX"

(rxmatch-substring m 1)
; → "abc"
```

### Exceptions

#### (raise <exception-class> [<message>])

Internally converted to Ruby's `raise <exception-class>,<message>`. All exception classes that Ruby has can be specified. If `<message>` is omitted, a message "filename:line-number raised exception-class-name" is created.

#### (error <"error-message-string"> [<S-expression>])

Used when you want to explicitly notify of an error. Displays an error message string and raises a RuntimeError exception. If an S-expression is specified, that S-expression is displayed at the end.

```lisp
nendo> (error "Error: message 1")
; → Error: message 1

nendo> (error "Error: message 2" '(a b c d))
; → Error: message 2 (a b c d)
```

#### (errorf <"sprintf-format-string"> [<value1>] [<value2>] ...)

Used when you want to explicitly notify of an error. Displays an error message string and raises a RuntimeError exception. Format strings similar to sprintf can be used.

```lisp
nendo> (errorf "Error: %s and %s" "A" "B")
; → Error: A and B
```

#### (guard (<variable> ((<condition1> <processing1>) ... (else <processing-n>))))

An API modeled after Gauche's high-level error handling form guard. Unlike Gauche, all built-in condition classes use Ruby's exception classes (RuntimeError, TypeError, etc.).

Example:
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

An API modeled after Gauche's high-level error handling form unwind-protect.

Executes `<body>` and `<cleanup>` in that order and returns the result of `<body>`. If an exception is raised in body, cleanup is executed before the exception exits the unwind-protect form. The exception is not raised outside the unwind-protect form.

### Input/Output

#### (read)

#### (read-from-string)

#### (write <expression>)

#### (write-to-string <expression>)

Object output and input are possible with `read` and `write`. External representations output by `write` can restore original data with `read`. That is, `read` and `write` functions can be used as means to save and restore tree-structured data created in Nendo to databases etc. However, for Ruby objects, original data cannot be restored with `read`.

Example:
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

#### (load <file-path>)

Loads and evaluates a file as a Nendo program.

#### (use <library-name>)

Loads and evaluates a library as a Nendo library. `use` is macro-expanded. Example: `(use a.b.c)` is directly expanded to `(load "a/b/c")`.

Notation examples:
```lisp
(load "./myscript")
(load "srfi-1")
(load "text/html-lite")
(load "text/tree")

(use srfi-1)
(use text.html-lite)
(use text.tree)
```

When the extension of Nendo source code is omitted, both ".nndc" (compiled) file and ".nnd" (Nendo script) file existence are checked, with ".nndc" loaded preferentially.

#### *load-path*

A list of load path strings. It's a global variable. Referenced by the `load` function and `use` macro. Created by copying information from Ruby's `$LOAD_PATH` when Nendo starts.

#### (add-load-path <path-name> [<afterp>])

Adds a search path name to `*load-path*`. If afterp is `#f` or unspecified, it's added to the beginning of `*load-path*`. If afterp is `#t`, it's added to the end of `*load-path*`.

Example:
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

## Macros

Nendo supports both "traditional macros" and "hygienic macros". Local macros (let-syntax) are also supported. Macros are applied in the compile phase. Macro expansion is performed recursively until all macro expansions are completed for one S-expression.

### Traditional Macro Definition

#### (macro <formal-arguments> <body>)

Fixed number of arguments, variable number of arguments, and n or more arguments can be defined.

### Macro Expansion

#### (macroexpand-1 <expression>)

Expands only the first macro found in `<expression>` once and returns the result as an expression.

#### (macroexpand <expression>)

Recursively expands macros until all macro expansions in `<expression>` are completed and returns the result as an expression.

Example:
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

### Hygienic Macro Definition

syntax-rules is a port from chibi-scheme 0.3. The following is an excerpt from chibi-scheme 0.3's README.

> SYNTAX-RULES macros are provided by default, with the extensions from SRFI-46. In addition, low-level hygienic macros are provided with a syntactic-closures interface, including SC-MACRO-TRANSFORMER, RSC-MACRO-TRANSFORMER, and ER-MACRO-TRANSFORMER.

#### (define-syntax (syntax-rules <literals> <rule1> [<rule2>] ...))

Defines global macros.

#### (let-syntax ((<variable1> (syntax-rules <literals> <rule1> [<rule2>] ...)) <variable2> (syntax-rules ...)) <expression>)

Defines local macros.

## Ruby Library Access

Nendo's Lisp code operates by being dynamically converted to Ruby code. Therefore, it's easy to access Ruby functionality from Nendo.

### Preparation

#### (require <Ruby-library-path-name>)

Require libraries to use, just like when programming in Ruby. Always returns `#f`.

```lisp
(require "pp")
; → #f
```

### Accessing Ruby Libraries

Ruby library access uses the `.` (dot) operator. There are two notation rules for `.` (dot).

#### ([<Ruby-object>].<method-name> <method-argument1> <method-argument2> ...)

Sends a message to a Ruby object. If `<Ruby-instance>` is omitted, `Kernel::` is assumed.

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

Only identifiers can be specified for `<Ruby-instance>` (numeric literals like `"abc"` or `100` cannot be specified).

#### (. <Ruby-object> <method-name> <method-argument1> <method-argument2> ...)

The `.` (dot) macro can specify `<Ruby-object>` as the first argument, enabling more flexible programming compared to the `(<object>.<method>)` notation above.

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

Ruby's Enumerator::Lazy can be used from Ruby 2.0.

#### (ruby-lazy-enabled-platform?)

Determines whether Enumerator::Lazy can be used on the platform.

#### (ruby-lazy <vector>)

Makes vector Enumerator::Lazy. On invalid platforms, does nothing and returns the argument as is.

#### (ruby-lazy? <vector>)

Determines whether vector is Enumerator::Lazy. Always `#f` on invalid platforms.

## Embedding in Ruby Programs

Programs written in Nendo can be easily called from Ruby.

```ruby
require 'nendo'
```

First, create an instance of the `Nendo::Core` class in a Ruby program and initialize it with the `Nendo::Core#loadInitFile` method.

```ruby
core = Nendo::Core.new()
core.loadInitFile
```

Next, load source files written in Nendo with the `Nendo::Core#load` method or evaluate Nendo programs by directly evaluating S-expressions with the `Nendo::Core#evalStr()` method.

```ruby
core.evalStr( '(define (plus10 num) (+ num 10))' )
```

For example, to call the plus10 function above from Ruby, use export-to-ruby to define it as a method that can be called from outside (Ruby singleton method).

```ruby
core.evalStr( '(export-to-ruby plus10)' )
```

Call the exported method.

```ruby
core.plus10( 1 )
```

Complete Ruby program example:
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

Execution example:
```bash
$ ruby sample.rb 
("a" "b" "c" ("d" "e"))
abcde
```

## Libraries

### Library Loading

For example, to use srfi-1, write as follows:

```lisp
(load-library "srfi-1")
(load-library "text.tree")
```

Alternatively, you can use use:

```lisp
(use srfi-1)
(use text.tree)
```

### Supported Libraries

#### srfi-1

[SRFI 1: List Library](http://srfi.schemers.org/srfi-1/srfi-1.html)

#### srfi-2

[SRFI 2: AND-LET*](http://srfi.schemers.org/srfi-2/srfi-2.html)

#### srfi-9

[SRFI 9: Defining Record Types](http://srfi.schemers.org/srfi-9/srfi-9.html)

#### srfi-26

[SRFI 26: Notation for Specializing Parameters without Currying](http://srfi.schemers.org/srfi-26/srfi-26.html) (cut cute)

#### text.html-lite

A port of Gauche's text.html-lite. Used for simple HTML document construction.

#### text.tree

A port of Gauche's text.tree. Used for lazy text construction.

#### debug.syslog

Changes the output destination of `#?=expressions` to syslog. Intended for use in web application debugging etc.

```lisp
(use debug.syslog)
```

#### debug.null

Suppresses debug output by `#?=expressions`. `#?=expressions` after writing use are no longer debug output.

```lisp
(use debug.null)
```

#### nendo.test

A subset of gauche.test. Unlike gauche.test, nendo.test specifies Ruby exception classes in the `(test-error <exception>)` part.

#### rfc.json

A subset of Gauche's rfc.json. Parts that receive port in Gauche's library are replaced with File objects in Nendo.

#### rfc.yaml

A YAML support library with almost the same API as rfc.json.

#### util.list

A subset of Gauche's util.list. Since Nendo has no multi-method dispatch functionality, versions with reversed argument specification order like assoc-ref are excluded.

#### util.match

A ported version of chibi-scheme's (chibi match). Since it's mostly compatible with Gauche's util.match, it's placed under the name util.match.

#### util.combinations

A ported version of Gauche's util.combinations. Implemented using util.match and API compatible with Gauche.

### Nendo-specific Libraries

#### (with-open <filename> <procedure> [<open-mode>])

Opens a file and passes the file object as an argument to `<procedure>`. When processing returns from `<procedure>`, the file is automatically closed. Internally implemented with Ruby's File#open, so check Ruby's reference manual for `<filename>` and `<open-mode>` specifications.

Example:
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

#### (readlines <IO-type>)

Reads line by line from files opened with Ruby's File#open or `with-open` function and returns as vector.

Example:
```lisp
nendo> (with-open "VERSION.yml" (lambda (f) (vector->list (readlines f))))
; → ("---" ":major: 0" ":minor: 6" ":patch: 5")
```

**Note**: In Ruby 1.9.x, readlines reads to the end of the file at once and returns a vector, but in Ruby 2.0, readlines doesn't read everything and returns an Enumerator::Lazy type lazy vector.

#### (readchars <IO-type>)

Reads character by character from files opened with Ruby's File#open or `with-open` function and returns as vector.

## Differences from Scheme R5RS

### Keyword Support

Like Gauche, supports keyword types with notation like `:abcde`.

### + Operator

Can be used not only for numbers but also for string concatenation.

### Unimplemented Special Forms

`letrec-syntax`

### Lazy Evaluation

`make-promise` `delay` `force` are not implemented.

### Continuations

Continuations are not implemented. That is, the following functions cannot be used:
`call-with-current-continuation` `dynamic-wind`

### eval

Only the form `(eval <expression>)` exists. Since there is only one type of environment, a second argument specifying the environment cannot be specified.

### Ports

The concept of port is not implemented. In Nendo, since there is Ruby's file functionality, use that instead of port for programming.

Programming similar to port is possible with examples like the following:

```lisp
(STDOUT.print)
(let1 f (StringIO.new "abc")  f.read)
```