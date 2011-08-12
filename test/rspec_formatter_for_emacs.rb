require 'rspec/core/formatters/progress_formatter'

# Example of a formatter with custom bactrace printing. Run me with:
# ruby bin/spec xxxxx.rb -r ./test/rspec_formatter_for_emacs.rb -f CustomFormatter
class CustomFormatter < RSpec::Core::Formatters::ProgressFormatter
  def backtrace_line(line)
    str = line.gsub(/([^:]*\.rb):([0-9]+):in /) do
      path   = "#{$1}"
      lineno = "#{$2}"
      if path.match( /lib/ ) and path.match( /rspec/ )
        "#{File.expand_path(path)}:#{lineno} IN "
      else
        "#{File.expand_path(path)}:#{lineno}:in "
      end
    end
    str
  end

  def dump_backtrace(example)
    format_backtrace(example.execution_result[:exception].backtrace, example).each do |backtrace_info|
      output.puts cyan("    #{backtrace_info}")
    end
  end

end
