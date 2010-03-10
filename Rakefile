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
    gemspec.files = FileList['lib/**/*.rb', 'lib/*.nnd', 'bin/*'].to_a
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler"
end

task :spec do
  sh "ruby -I ./lib /usr/local/bin/spec nendo_spec.rb"
end

task :compile do
  sh "/bin/rm -f ./lib/init.nndc*"
  sh "time ruby -I ./lib ./bin/nendo generate_compiled.nnd > ./lib/init.nndc.tmp"
  sh "/bin/mv -f ./lib/init.nndc.tmp ./lib/init.nndc"
end
