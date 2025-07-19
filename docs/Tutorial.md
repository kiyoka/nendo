# Nendo Programming Language Tutorial

*[日本語版 / Japanese](Tutorial.ja.md)*

This tutorial will guide you through the Nendo programming language. Nendo is designed for S-expression programming on Ruby, combining the power of Lisp-style syntax with Ruby's extensive ecosystem.

## Prerequisites

This tutorial assumes some familiarity with both Ruby and Lisp-family languages. If you have experience with Scheme, that will be particularly helpful since Nendo's syntax is designed to be as close to Scheme as possible. Even if you're new to both Ruby and Lisp, following this tutorial step by step will give you a good sense of what the language is like.

**Compatible Version**: This tutorial is compatible with Nendo version 0.6.5+

## Starting the REPL (Interactive Shell)

Launch Nendo without command-line options to get an interactive shell with the `nendo>` prompt, where you can evaluate S-expressions:

```bash
$ nendo
nendo> (+ 1 1)
2
nendo> (+ "1" "1")
"11"
nendo> (iota 10)
(0 1 2 3 4 5 6 7 8 9)
```

## Running User Scripts

### Method 1: Specify Script File
```bash
nendo your_script.nnd
```

### Method 2: Make Script Executable (Shell Trampoline)
Add this shebang to the beginning of your script file and make it executable:

```bash
#!/bin/sh
:; #-*- mode: nendo; syntax: scheme -*-;;
:; exec /usr/local/bin/nendo $0 $*

# ... your code ...
```

**Note**: Nendo reads script files as UTF-8 encoding. You cannot use other encodings.

### Method 3: Ruby Wrapper (Gem-compatible)
This method works well when building gems:

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

To call the main function at the end of the script:
```lisp
(main *argv*)
;;END-OF-SCRIPT
```

## Basic Expression Evaluation

### Scheme-like Syntax
Nendo's syntax is Scheme-like. If you're familiar with Scheme, you can apply that knowledge directly.

**Hello World:**
```lisp
(print "Hello, World!")
; => Hello, World!

(display "Hello, ")
(display "World!")
(newline)
; => Hello World!
```

**String concatenation** (unlike Scheme, strings can be joined with `+`):
```lisp
(print (+ "Hello, " "World!"))
; => Hello, World!
```

**Function definition:**
```lisp
nendo> (define (hello-world str)
         (print (+ "Hello, " str " World!")))
; => #<Proc:0x7cc688@(stdin):23>
nendo> (hello-world "Nendo")
Hello, Nendo World!
; => "Hello, Nendo World!"
```

**String formatting** (Ruby-style printf functions are available):
```lisp
nendo> (define str "Nendo")
; => "Nendo"
nendo> (sprintf "Hello, %s World!" str)
; => "Hello, Nendo World!"
```

## Ruby Integration

While Nendo uses Scheme syntax, all string and numeric objects are Ruby objects. You can access Ruby instance variables and methods using the dot (`.`) notation:

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

**Omitting the instance defaults to Kernel::**
```lisp
nendo> (define f (.open "file.txt"))
#<File:0x00000101463320>
nendo> (f.readline.chomp)
"first line."
```

**Creating new Ruby instances** (Date class example):
```lisp
(require "date")
(let1 d (Date.new 0)
  (list (d.strftime "%x")
        (d.strftime "%s")))
; => (01/01/00 -62167392000)
```

The `(require "date")` declaration loads Ruby libraries, equivalent to Ruby's `require`.

**Calling class methods directly** (Digest::MD5 example):
```lisp
nendo> (require "digest/md5")
; => false
nendo> (define digest (Digest::MD5.hexdigest "buzz buzz buzz"))
; => "75ced500ba12b8e25475b9fce170a914"
nendo> digest
; => "75ced500ba12b8e25475b9fce170a914"
```

## Creating Your First Script

### Factorial Program Challenge

Create a file named `fact.nnd`:

```bash
#!/bin/sh
:; #-*- mode: nendo; syntax: scheme -*-;;
:; exec /usr/local/bin/nendo $0 $*

;; factorial function
(define (fact n)
  (if (zero? n)
      1
      (* n (fact (- n 1)))))

(print (fact 5))
```

Make it executable and run:
```bash
chmod +x ./fact.nnd
$ ./fact.nnd 
120
```

For factorial of 10, change the last line to:
```lisp
(print (fact 10))
```

```bash
$ ./fact.nnd 
3628800
```

### Functional Programming Style Factorial

The same calculation can be written more concisely using functional programming style.

To calculate factorial of 5, first create numbers 1 to 5:
```lisp
$ nendo
nendo> (range 5 1)
(1 2 3 4 5)
```
*Note: `range` is an alias for `iota`*

Now multiply all numbers using `apply`:
```lisp
nendo> (apply * (range 5 1))
120
```
*This is equivalent to writing `(* 1 2 3 4 5)`*

For factorial of 10:
```lisp
nendo> (apply * (range 10 1))
3628800
```

This approach uses list generation and function application instead of loops or recursion (functional programming style).

### Command Line Arguments

Define a `main` function to receive command-line arguments. Nendo automatically calls `main` if it exists. The `argv` parameter is a list of strings.

**argv.nnd:**
```bash
#!/bin/sh
:; #-*- mode: nendo; syntax: scheme -*-;;
:; exec /usr/local/bin/nendo $0 $*
(define (main argv)
  (write argv)
  (newline))
```

Test it:
```bash
$ nendo argv.nnd a bb ccc
("a" "bb" "ccc")
```

**Parameterized factorial program** (fact.nnd):
```bash
#!/bin/sh
:; #-*- mode: nendo; syntax: scheme -*-;;
:; exec /usr/local/bin/nendo $0 $*

;; factorial function
(define (fact n)
  (apply * (range n 1)))

(define (main argv)
  (print (fact (. (car argv) to_i))))
```

Testing:
```bash
$ nendo fact.nnd 1
1
$ nendo fact.nnd 5
120
$ nendo fact.nnd 10
3628800
$ nendo fact.nnd 20
2432902008176640000
```

## Working with Ruby Data Structures

### Arrays (Vectors)

Nendo's `vector` type is equivalent to Ruby's `Array` (also R5RS Scheme vectors).

**Converting list to Array:**
```lisp
nendo> (to-arr '(1 2 3))
#(1 2 3)
```

**Converting Array to list:**
```lisp
nendo> (to-list '#(1 2 3))
(1 2 3)
```

**Creating vectors:**
```lisp
nendo> (define vec '#("a" "b" "C" "d" "e"))
#("a" "b" "C" "d" "e")
nendo> (vec.class)
Array
nendo> (vector-ref vec 2)
"C"
```

### Hashes

**Converting alist to Hash:**
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

**Converting back to alist:**
```lisp
nendo> (hash-table->alist h1)
(("a" . 1) ("b" . 2) ("c" . 3))
```

**Using hash-table functions:**
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

## File Input

Reading files line by line is common in scripts. Here's the Nendo idiom:

```lisp
(with-open "textfile"
  (lambda (f)
    (for-each 
      (lambda (line)
        (print (+ "# " line)))
    (readlines f))))
```

*Note: In Ruby 1.9.x, `readlines` reads the entire file and returns a vector, but in Ruby 2.0+, it returns an `Enumerator::Lazy` type for lazy evaluation.*

## Typical Filter Pattern

Nendo can use Ruby's STDIN directly:

```lisp
(for-each
  (lambda (line)
    ;; output processing
    (print line))
   STDIN)
```

## Ruby Block Syntax

Use `&block` syntax to generate Ruby blocks. This is useful because many Ruby gem libraries have methods that take blocks as arguments.

### Comparison with Ruby Code

**Commenting all lines in sample.rb:**

**Ruby:**
```ruby
open ( "sample.rb" ) {|f|
  f.readlines.each {|line|
    puts "# " + line
  }
}
```

**Nendo (using &block):**
```lisp
(.open "sample.rb"
  (&block (f)
    (f.readlines.each
      (&block (line)
         (print (+ "# " line))))))
```

*Note: The above uses `&block` for demonstration. Usually, the Scheme-style approach below is more natural:*

**Nendo (Scheme-style):**
```lisp
(with-open "sample.rb"
           (lambda (f)
             (for-each
              (lambda (line)
                (print (+ "# " line)))
              (to-list (f.readlines.to_list)))))
```

Since Nendo's `for-each`/`map`/`filter` functions can take Enumerable types instead of lists:

```lisp
(with-open "sample.rb"
           (lambda (f)
             (for-each
              (lambda (line)
                (print (+ "# " (line.chomp))))
              f)))
```

## Debugging

The primary debugging method in Nendo is print debugging. A special reader macro `#?=` is provided for this purpose.

### The #?= Macro

Adding `#?=` to any S-expression displays the source filename, line number, and evaluation result. `#?=` has no side effects, so you can insert it anywhere without affecting the original code (similar to Ruby's `p` function).

**Example 1:**
```lisp
(define a 100)
100
nendo> (+ #?=a 1)
#?="(stdin)":8:a
#?-    100
101
```

**Example 2:**

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

**Execution result:**
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

## Next Steps

This tutorial covers the fundamentals of Nendo programming. For more advanced topics and detailed reference information, consult the [Nendo Reference Manual](ReferenceManual.md) and explore the examples in the `example/` directory of the Nendo repository.

Happy coding with Nendo!
