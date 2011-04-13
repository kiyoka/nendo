# -*- mode: ruby; -*-
#                                                  Rakefile for Nendo
# Release Engineering
#   1. edit the VERSION.yml file
#   2. rake compile  &&   rake test
#   3. rake gemspec  &&   rake build
#      to generate nendo-x.x.x.gem
#   4. install nendo-x.x.x.gem to clean environment and test
#   5. rake release
#   6. gem push pkg/nendo-x.x.x.gem   ( need gem version 1.3.6 or higer. Please "gem update --system" to update )

require 'rake'
begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "nendo"
    gemspec.summary = "Nendo is a dialect of Lisp."
    gemspec.description = "Nendo is a programming language written in Ruby."
    gemspec.email = "kiyoka@sumibi.org"
    gemspec.homepage = "http://github.com/kiyoka/nendo"
    gemspec.authors = ["Kiyoka Nishiyama"]
    gemspec.files = FileList['lib/**/*.rb',
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
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler"
end

task :test do
  stage1 =  []
  stage1 << "ruby -I ./lib /usr/local/bin/rspec -b ./test/syntax_spec.rb"
  stage1 << "ruby -I ./lib /usr/local/bin/rspec -b ./test/nendo_spec.rb"
  stage1 << "time ruby -I ./lib ./bin/nendo ./test/srfi-1-test.nnd"
  stage2 =  []
  stage2 << "/bin/rm -f test.record"
  stage2 << "ruby -I ./lib ./bin/nendo ./test/textlib-test.nnd     >  test.log"
  stage2 << "ruby -I ./lib ./bin/nendo ./test/nendo-util-test.nnd  >> test.log"
  stage2 << "ruby -I ./lib ./bin/nendo ./test/json-test.nnd        >> test.log"
  stage2 << "ruby -I ./lib ./bin/nendo ./test/srfi-2-test.nnd      >> test.log"
  stage2 << "ruby -I ./lib ./bin/nendo ./test/srfi-26-test.nnd     >> test.log"
  stage2 << "ruby -I ./lib ./bin/nendo ./test/util-list-test.nnd   >> test.log"
  stage2 << "cat test.record"
  arr = []
  arr += stage1
  arr += stage2
  arr.each {|str|
    sh str
  }
end

task :compile do
  # Replace Version Number
  targetFile = "./lib/nendo.rb"
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
  sh "/bin/rm -f ./lib/*.nndc* ./lib/**/*.nndc*"
  [ "./lib/init.nnd",
    "./lib/srfi-1.nnd",
    "./lib/srfi-2.nnd",
    "./lib/srfi-26.nnd",
    "./lib/util/list.nnd",
    "./lib/text/html-lite.nnd",
    "./lib/text/tree.nnd", 
    "./lib/debug/syslog.nnd",
    "./lib/nendo/test.nnd",
    "./lib/rfc/json.nnd" ].each {|fn|
    sh sprintf( "time ruby -I ./lib ./bin/nendo -c %s > %s", fn, fn + "c" )
  }
end

task :bench do
  sh "ruby --version"
  sh "ruby ./bin/nendo ./benchmark/benchmark.nnd"
end

task :clean do
  sh "/bin/rm -f ./lib/*.nndc* ./lib/**/*.nndc*"
end

task :repl do
  sh "ruby -I ./lib ./bin/nendo"
end


