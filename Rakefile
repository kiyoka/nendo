#  Rakefile for Nendo
#
#
# Release Engineering
#   1. edit the VERSION.yml file
#   2. rake compile
#   3. rake spec
#   4. rake gemspec
#   5. rake build
#      to generate nendo-x.x.x.gem
#   6. install nendo-x.x.x.gem to clean environment and test
#   7. rake release
#   8. gem push pkg/nendo-x.x.x.gem

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
  sh "/bin/rm -f ./lib/init.nndc* ./lib/text/*.nndc*"
  sh "time ruby -I ./lib ./bin/nendo -q --load ./lib/init.nnd --load ./lib/text/html-lite.nnd --load ./lib/text/tree.nnd save_compiled_file.nnd"
end
