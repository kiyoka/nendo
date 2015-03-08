# -*- mode: ruby; -*-
#                                                  Rakefile for Nendo
# Release Engineering
#   1. edit the VERSION.yml file
#   2. rake compile  &&   rake
#   3. rake build
#      to generate nendo-x.x.x.gem
#   4. install nendo-x.x.x.gem to clean environment and test
#   5. rake release
#   6. gem push pkg/nendo-x.x.x.gem   ( need gem version 1.3.6 or higer. Please "gem update --system" to update )

require 'rake'
require 'bundler/gem_tasks'
require 'jeweler2'

printf( "Info: NENDO_CLEAN_TEST is [%s]\n", ENV[ 'NENDO_CLEAN_TEST' ] )

task :default => [:condition_clean, :test, :condition_test3] do
end

task :test    => [:test1, :test2] do
end

task :test1 do
  sh "rspec -I ./lib -b "
  sh "ruby -I ./lib ./bin/nendo ./spec/srfi-1-test.nnd"
end

task :test2 do
  sh "/bin/rm -f test.record"
  sh "echo "" > test.log"
  sh "ruby -I ./lib ./bin/nendo ./spec/textlib-test.nnd              >> test.log"
  sh "ruby -I ./lib ./bin/nendo ./spec/nendo-util-test.nnd           >> test.log"
  sh "ruby -I ./lib ./bin/nendo ./spec/json-test.nnd                 >> test.log"
  sh "ruby -I ./lib ./bin/nendo ./spec/yaml-test.nnd                 >> test.log"
  sh "ruby -I ./lib ./bin/nendo ./spec/srfi-2-test.nnd               >> test.log"
  sh "ruby -I ./lib ./bin/nendo ./spec/srfi-9-test.nnd               >> test.log"
  sh "ruby -I ./lib ./bin/nendo ./spec/srfi-26-test.nnd              >> test.log"
  sh "ruby -I ./lib ./bin/nendo ./spec/util-list-test.nnd            >> test.log"
  sh "cat test.record"
  sh "grep ' 0 failed, ' test.record  > /dev/null"
end

task :test3 do
  sh "/bin/rm -f test.record"
  sh "echo "" > test3.log"
  sh "ruby -I ./lib ./bin/nendo ./spec/match-test.nnd                | tee -a test3.log"
  sh "ruby -I ./lib ./bin/nendo ./spec/util-combinations-test.nnd    | tee -a test3.log"
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
  files << "./lib/nendo/srfi-9.nnd"
  files << "./lib/nendo/srfi-26.nnd"
  files << "./lib/nendo/util/list.nnd"
  files << "./lib/nendo/text/html-lite.nnd"
  files << "./lib/nendo/text/tree.nnd"
  files << "./lib/nendo/debug/null.nnd"
  files << "./lib/nendo/debug/syslog.nnd"
  files << "./lib/nendo/nendo/test.nnd"
  files << "./lib/nendo/rfc/json.nnd"
  files << "./lib/nendo/rfc/yaml.nnd"
  files << "./lib/nendo/util/match.nnd"
  files << "./lib/nendo/util/record.nnd"
  files << "./lib/nendo/util/combinations.nnd"
  files << "./lib/nendo/nendo/experimental.nnd"
  files.each {|fn|
    sh sprintf( "ruby -I ./lib ./bin/nendo -d -c %s > %s", fn, fn + "c" )
  }
end

task :bench do
  sh "ruby --version"
  sh "ruby -I ./lib ./bin/nendo        ./benchmark/benchmark.nnd"
  sh "ruby -I ./lib ./bin/nendo -d     ./benchmark/benchmark.nnd"
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

task :hello do
  sh "ruby -I ./lib -I ./lib/nendo  ./bin/nendo -I ../nendo/example1 -I ../nendo/example2 example/hello.nnd"
end
