# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nendo"

Gem::Specification.new do |spec|
  spec.name = "nendo"
  spec.version = Nendo::Core.version

  spec.required_rubygems_version = Gem::Requirement.new(">= 0") if spec.respond_to? :required_rubygems_version=
  spec.require_paths = ["lib"]
  spec.authors = ["Kiyoka Nishiyama"]
  spec.description = "Nendo is a programming language written in Ruby."
  spec.email = "kiyoka@sumibi.org"
  spec.executables = ["nendo"]
  spec.extra_rdoc_files = [
    "README.md"
  ]
  spec.files = [
    ".gemtest",
    "COPYING",
    "History.txt",
    "README.md",
    "Rakefile",
    "VERSION.yml",
    "benchmark/benchmark.nnd",
    "benchmark/nendo_benchmark_code.nnd",
    "benchmark/ruby_benchmark_code.rb",
    "bin/nendo",
    "emacs/nendo-mode.el",
    "example/KyotoCabinet/kcbench.rb",
    "example/KyotoCabinet/kcbench1.nnd",
    "example/KyotoCabinet/kcbench2.nnd",
    "example/KyotoCabinet/kcbench3.nnd",
    "example/KyotoCabinet/kcsample.nnd",
    "example/KyotoCabinet/kcsample.rb",
    "example/cgi/dekamoji.cgi",
    "example/cgi/sample.cgi",
    "example/deep-loop1.nnd",
    "example/deep-loop2.nnd",
    "example/exit.nnd",
    "example/export-lisp-functions.rb",
    "example/fact.nnd",
    "example/fizzbuzz1.nnd",
    "example/html-lite-sample.nnd",
    "example/nqueen.nnd",
    "example/twitterTL.nnd",
    "lib/nendo.rb",
    "lib/nendo/ruby/builtin_functions.rb",
    "lib/nendo/ruby/reader.rb",
    "lib/nendo/ruby/core.rb",
    "lib/nendo/ruby/optimized_func.rb",
    "lib/nendo/ruby/out_of_module.rb",
    "lib/nendo/ruby/evaluator.rb",
    "lib/nendo/ruby/printer.rb",
    "lib/nendo/ruby/types.rb",
    "lib/nendo/util/match.nnd",
    "lib/nendo/util/record.nnd",
    "lib/nendo/util/list.nnd",
    "lib/nendo/util/combinations.nnd",
    "lib/nendo/srfi-2.nnd",
    "lib/nendo/text/tree.nnd",
    "lib/nendo/text/html-lite.nnd",
    "lib/nendo/srfi-9.nnd",
    "lib/nendo/nendo/experimental.nnd",
    "lib/nendo/nendo/test.nnd",
    "lib/nendo/srfi-26.nnd",
    "lib/nendo/rfc/yaml.nnd",
    "lib/nendo/rfc/json.nnd",
    "lib/nendo/srfi-1.nnd",
    "lib/nendo/debug/null.nnd",
    "lib/nendo/debug/syslog.nnd",
    "lib/nendo/init.nnd",
    "lib/nendo/util/combinations.nndc",
    "lib/nendo/util/record.nndc",
    "lib/nendo/util/list.nndc",
    "lib/nendo/util/match.nndc",
    "lib/nendo/srfi-1.nndc",
    "lib/nendo/srfi-26.nndc",
    "lib/nendo/text/tree.nndc",
    "lib/nendo/text/html-lite.nndc",
    "lib/nendo/srfi-2.nndc",
    "lib/nendo/nendo/test.nndc",
    "lib/nendo/nendo/experimental.nndc",
    "lib/nendo/init.nndc",
    "lib/nendo/rfc/yaml.nndc",
    "lib/nendo/rfc/json.nndc",
    "lib/nendo/srfi-9.nndc",
    "lib/nendo/debug/null.nndc",
    "lib/nendo/debug/syslog.nndc",
    "lib/nendo/util/combinations.nndc.nc",
    "lib/nendo/util/record.nndc.nc",
    "lib/nendo/util/list.nndc.nc",
    "lib/nendo/util/match.nndc.nc",
    "lib/nendo/srfi-1.nndc.nc",
    "lib/nendo/srfi-26.nndc.nc",
    "lib/nendo/text/tree.nndc.nc",
    "lib/nendo/text/html-lite.nndc.nc",
    "lib/nendo/srfi-2.nndc.nc",
    "lib/nendo/nendo/test.nndc.nc",
    "lib/nendo/nendo/experimental.nndc.nc",
    "lib/nendo/init.nndc.nc",
    "lib/nendo/rfc/yaml.nndc.nc",
    "lib/nendo/rfc/json.nndc.nc",
    "lib/nendo/srfi-9.nndc.nc",
    "lib/nendo/debug/null.nndc.nc",
    "lib/nendo/debug/syslog.nndc.nc"
  ]
  spec.homepage = "http://github.com/kiyoka/nendo"
  spec.licenses = ["New BSD"]
  spec.rdoc_options = []
  spec.files.each { |fn|
    if fn.match( /nndc$/ )
    elsif fn.match( /nndc.nc$/ )
    else
      spec.rdoc_options += ["-x", fn]
    end
  }
  spec.summary = "Nendo is a dialect of Lisp."
end

