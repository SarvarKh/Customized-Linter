require 'cli-colorize'
require_relative '../lib/error_scanner'

# JS linter class with multiple linter check methods
class JSLinter
  def initialize(file)
    @file = file
    puts 'JS_Linter is being initialized... '
    @error_scanner = ErrorScanner.new(@file)
  end

  # process the linter test
  def process
    puts @error_scanner.checker_indentation
    puts @error_scanner.checker_indentation_end
    puts @error_scanner.checker_function_name
    puts @error_scanner.checker_parentheses_function
    puts @error_scanner.checker_open_curlybrace_function
    puts @error_scanner.checker_close_curlybrace_function
  end
end

file = ARGV[0]
js_linter = JSLinter.new(file)
js_linter.process
