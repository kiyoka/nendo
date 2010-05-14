#-*- mode: ruby; -*-
#  Rakefile for Nendo
#
#
# Release Engineering
#   1. edit the VERSION.yml file
#   2. rake compile  &&  rake spec
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
    gemspec.files = FileList['lib/**/*.rb', 'lib/**/*.nnd', 'lib/**/*.nndc', 'bin/*', 'example/*.nnd', 'example/cgi/*.cgi', 'emacs/*.el'].to_a
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler"
end

task :spec do
  sh "ruby -I ./lib /usr/local/bin/spec nendo_spec.rb"
end

task :compile do
  # Replace Version Number
  vh = Jeweler::VersionHelper.new "."
  (original, modified) = open( "./lib/init.nnd" ) {|f|
    lines = f.readlines
    [ lines,
      lines.map {|line|
        if line.match( /;;NENDO-VERSION/ )
          sprintf( '  "%s"  ;;NENDO-VERSION', vh.to_s ) + "\n"
        else
          line
        end
      } ]
  }
  if original.join != modified.join
    puts "Info: ./lib/init.nnd was updated."
    open( "./lib/init.nnd", "w" ) {|f|
      f.write( modified.join )
    }
  end

  # Compile
  sh "/bin/rm -f ./lib/*.nndc* ./lib/**/*.nndc*"
  [ "./lib/init.nnd",
    "./lib/text/html-lite.nnd",
    "./lib/text/tree.nnd", 
    "./lib/debug/syslog.nnd" ].each {|fn|
    printf( "Compilng... [%-40s] : ", fn )
    sh "time ruby ./bin/nendo ./bin/nendoc " + fn
  }
end

task :clean do
  sh "/bin/rm -f ./lib/*.nndc* ./lib/**/*.nndc*"
end


