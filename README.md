# Nendo

*[日本語版 / Japanese](README.ja.md)*

Nendo is a dynamic programming language built on top of Ruby environment. It is designed to be a macro language of Ruby. Nendo provides easy access to the whole Ruby environment.

Nendo is a dialect of Lisp. `nendo` means clay in Japanese. Lisp programming is reminiscent of a clay craft. I hope you will feel like playing with clay when you use Nendo.

## Features

- **Scheme-like Syntax**: Uses S-expressions to enable true macros that are sealed as forbidden techniques in Ruby
- **Direct Ruby Access**: Access Ruby's standard libraries and gems using the dot (.) syntax
- **List Processing Oriented**: Powerful for complex data structures and tree manipulation
- **Easy Installation**: Pure Ruby implementation - just install the gem

## Supported Libraries

### SRFIs
- [SRFI 1: List Library](http://srfi.schemers.org/srfi-1/srfi-1.html) (map, filter, fold, ...)
- [SRFI 2: AND-LET*](http://srfi.schemers.org/srfi-2/srfi-2.html)
- [SRFI 8: RECEIVE](http://srfi.schemers.org/srfi-8/srfi-8.html)
- [SRFI 9: Defining Record Types](http://srfi.schemers.org/srfi-9/srfi-9.html)
- [SRFI 26: Notation for Specializing Parameters](http://srfi.schemers.org/srfi-26/srfi-26.html) (cut, cute)
- [SRFI 46: Basic Syntax-rules Extensions](http://srfi.schemers.org/srfi-46/srfi-46.html)
- [SRFI 61: A more general COND clause](http://srfi.schemers.org/srfi-61/srfi-61.html)
- [SRFI 69: Basic hash tables](http://srfi.schemers.org/srfi-69/srfi-69.html)

### Ported from chibi-scheme and Gauche
- text.html-lite - Simple HTML document construction
- text.tree - Lazy text construction
- nendo.test - Unit testing (subset of gauche.test)
- rfc.json - JSON parsing and construction
- util.list - Additional list library
- util.match - Pattern matching (ported from chibi-scheme 0.3)
- util.combinations - Combination library

## Installation

### Requirements
- Ruby 1.9.3, 2.0.0, 2.1.0, 2.2.0+
- JRuby 1.6.2+

### Install from RubyGems
```bash
gem install nendo
```

## Examples

### Hello World
```lisp
(print (+ "Hello " "World!"))
; => Hello World!
```

### Even numbers filter
```lisp
(filter
 (lambda (n)
   (= (% n 2) 0))
 '(1 2 3 4 5 6 7 8 9 10))
; => (2 4 6 8 10)
```

### Accessing Ruby libraries
```lisp
(require "date")
(let1 d (Date.new 0)
  (list (d.strftime "%x")
        (d.strftime "%s")))
```

### Defining macros
```lisp
(define when (macro form
   `(if ,(car form) (begin ,@(cdr form)))))
```

## For Ruby Users

- **S-expression syntax**: Enables true macros and powerful DSL construction
- **List processing**: Ideal for complex data structures where object-oriented approaches fall short
- **Seamless Ruby integration**: Access the entire Ruby ecosystem

## For Lisp Users

- **Vast Ruby library ecosystem**: Access all gems and Ruby libraries
- **Cloud deployment ready**: Works on Ruby-based PaaS platforms like Heroku
- **Easy installation**: Pure Ruby implementation, no complex dependencies

## Source Code & Development

- [GitHub Repository](http://github.com/kiyoka/nendo)
- [Travis CI](http://travis-ci.org/#!/kiyoka/nendo/builds/79961)

## Projects Written in Nendo

- [sekka](http://github.com/kiyoka/sekka) - Japanese input method

## Documentation

- [Tutorial](docs/Tutorial.md)
- [ReferenceManual](docs/ReferenceManual.md)

## License

This software is open source, covered by a BSD-style license. Please read accompanying file COPYING.




