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