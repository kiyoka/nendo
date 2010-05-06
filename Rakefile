#  Rakefile for Nendo
#
#
# Release Engineering
#   1. edit the VERSION.yml file
#   2. rake compile  &&  rake spec  &&  rake gemspec  &&   rake build
#      to generate nendo-x.x.x.gem
#   3. install nendo-x.x.x.gem to clean environment and test
#   4. rake release
#   5. gem push pkg/nendo-x.x.x.gem   ( need gem version 1.3.6 or higer. Please "gem update --system" to update )

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
  result = open( "./lib/init.nnd" ) {|f|
    lines = f.readlines
    lines.map {|line|
      if line.match( /;;NENDO-VERSION/ )
        sprintf( '  "%s"  ;;NENDO-VERSION', vh.to_s ) + "\n"
      else
        line
      end
    }
  }
  open( "./lib/init.nnd", "w" ) {|f|
    f.write( result.join )
  }

  # Compile
  sh "/bin/rm -f ./lib/*.nndc* ./lib/**/*.nndc*"
  sh "time ruby -I ./lib ./bin/nendo -q -l ./lib/init.nnd -l ./lib/text/html-lite.nnd -l ./lib/text/tree.nnd -l ./lib/debug/syslog.nnd save_compiled_file.nnd"
end

task :clean do
  sh "/bin/rm -f ./lib/*.nndc* ./lib/**/*.nndc*"
end


