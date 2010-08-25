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
