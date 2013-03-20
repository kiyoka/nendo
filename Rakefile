# -*- mode: ruby; -*-
#                                                  Rakefile for Nendo
# Release Engineering
#   1. edit the VERSION.yml file
#   2. rake compile  &&   rake
#   3. rake gemspec  &&   rake build
#      to generate nendo-x.x.x.gem
#   4. install nendo-x.x.x.gem to clean environment and test
#   5. rake release
#   6. gem push pkg/nendo-x.x.x.gem   ( need gem version 1.3.6 or higer. Please "gem update --system" to update )

require 'rake'
begin
  require 'jeweler2'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "nendo"
    gemspec.summary = "Nendo is a dialect of Lisp."
    gemspec.description = "Nendo is a programming language written in Ruby."
    gemspec.email = "kiyoka@sumibi.org"
    gemspec.homepage = "http://github.com/kiyoka/nendo"
    gemspec.authors = ["Kiyoka Nishiyama"]
    gemspec.files = FileList['Rakefile',
                             '.gemtest',
                             'History.txt',
                             'VERSION.yml',
                             'README',
                             'COPYING',
                             'lib/**/*.rb',
                             'lib/**/*.nnd',
                             'lib/**/*.nndc',
                             'bin/*',
                             'test/*',
                             'example/*.rb',
                             'example/*.nnd',
                             'example/cgi/*',
                             'example/KyotoCabinet/*.nnd',
                             'example/KyotoCabinet/*.rb',
                             'emacs/*.el',
                             'benchmark/*.rb',
                             'benchmark/*.nnd'].to_a
    gemspec.add_development_dependency "rspec"
    gemspec.add_development_dependency "rake"
    gemspec.add_dependency             "json"
  end
rescue LoadError
  puts 'Jeweler2 not available. If you want to build a gemfile, please install with "sudo gem install jeweler2"'
end

printf( "Info: NENDO_CLEAN_TEST is [%s]\n", ENV[ 'NENDO_CLEAN_TEST' ] )

task :default => [:condition_clean, :test, :condition_test3] do
end

task :test    => [:test1, :test2] do
end

task :test1 do
  sh "ruby -I ./lib `which rspec` -b   ./test/nendo_spec.rb         "
  sh "ruby -I ./lib `which rspec` -b   ./test/syntax_spec.rb        "
  sh "ruby -I ./lib `which rspec` -b   ./test/testframework_spec.rb "
  sh "ruby -I ./lib ./bin/nendo ./test/srfi-1-test.nnd"
end

task :test2 do
  sh "/bin/rm -f test.record"
  sh "echo "" > test.log"
  sh "ruby -I ./lib ./bin/nendo ./test/textlib-test.nnd              >> test.log"
  sh "ruby -I ./lib ./bin/nendo ./test/nendo-util-test.nnd           >> test.log"
  sh "ruby -I ./lib ./bin/nendo ./test/json-test.nnd                 >> test.log"
  sh "ruby -I ./lib ./bin/nendo ./test/srfi-2-test.nnd               >> test.log"
  sh "ruby -I ./lib ./bin/nendo ./test/srfi-26-test.nnd              >> test.log"
  sh "ruby -I ./lib ./bin/nendo ./test/util-list-test.nnd            >> test.log"
  sh "cat test.record"
  sh "grep ' 0 failed, ' test.record  > /dev/null"
end

task :test3 do
  sh "/bin/rm -f test.record"
  sh "echo "" > test3.log"
  sh "ruby -I ./lib ./bin/nendo ./test/match-test.nnd                | tee -a test3.log"
  sh "ruby -I ./lib ./bin/nendo ./test/util-combinations-test.nnd    | tee -a test3.log"
  sh "cat test.record"
  sh "grep ' 0 failed, ' test.record > /dev/null"
end

task :condition_test3 do
  if 1 == ENV[ 'NENDO_CLEAN_TEST' ].to_i
    puts "Info: test3 is passed with NENDO_CLEAN_TEST=1 env. because test3 takes too much cpu time."
  else
    Rake::Task["test3"].execute
  end
end

task :compile do
  # Replace Version Number
  targetFile = "./lib/nendo/ruby/core.rb"
  vh = Jeweler::VersionHelper.new "."
  (original, modified) = open( targetFile ) {|f|
    lines = f.readlines
    [ lines,
      lines.map {|line|
        if line.match( /##NENDO-VERSION/ )
          sprintf( '      "%s"  ##NENDO-VERSION', vh.to_s ) + "\n"
        else
          line
        end
      } ]
  }
  if original.join != modified.join
    puts "Info: " + targetFile + " was updated."
    open( targetFile, "w" ) {|f|
      f.write( modified.join )
    }
  end

  # Compile
  sh "/bin/rm -f ./lib/nendo/*.nndc* ./lib/nendo/**/*.nndc*"
  sh "ruby -rrbconfig -e 'p RbConfig::CONFIG[ \"vendor_dir\" ]'"
  files = []
  files << "./lib/nendo/init.nnd"
  files << "./lib/nendo/srfi-1.nnd"
  files << "./lib/nendo/srfi-2.nnd"
  files << "./lib/nendo/srfi-26.nnd"
  files << "./lib/nendo/util/list.nnd"
  files << "./lib/nendo/text/html-lite.nnd"
  files << "./lib/nendo/text/tree.nnd"
  files << "./lib/nendo/debug/null.nnd"
  files << "./lib/nendo/debug/syslog.nnd"
  files << "./lib/nendo/nendo/test.nnd"
  files << "./lib/nendo/rfc/json.nnd"
  files << "./lib/nendo/util/match.nnd"
  files << "./lib/nendo/util/combinations.nnd"
  files << "./lib/nendo/nendo/experimental.nnd"
  files.each {|fn|
    sh sprintf( "ruby -I ./lib ./bin/nendo -c %s > %s", fn, fn + "c" )
  }
end

task :bench do
  sh "ruby --version"
  sh "ruby -I ./lib ./bin/nendo      ./benchmark/benchmark.nnd"
  sh "                    nendo      ./benchmark/benchmark.nnd"
end

task :clean_nndc do
  sh "/bin/rm -f ./lib/**/*.nndc* ./lib/**/**/*.nndc*"
end

task :condition_clean do
  if 1 == ENV[ 'NENDO_CLEAN_TEST' ].to_i
    Rake::Task["clean_nndc"].execute
  end
end

task :repl do
  sh "ruby -I ./lib -I ./lib/nendo  ./bin/nendo"
end
