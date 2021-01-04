# JS linter class with multiple linter check methods
require 'cli-colorize'
require_relative '../lib/indentation'
require_relative '../lib/indentation_end'
require_relative '../lib/function_name'
require_relative '../lib/parentheses_function'

class JSLinter
  def initialize(file)
    @file = file
    puts 'JS_Linter is being initialized... '
    @arr_file = File.foreach(@file).to_a
  end
  
  include Indentation
  include IndentationEnd
  include FunctionName
  include ParenthesesFunction

  def checker_open_curlybrace_function
    @arr_file.each_with_index do |str, index|
      if str.match(/function/) && !str.match(/[{]/)
        puts "[File: #{@file}], " + "[Line: ##{index + 1}], ".blue + '[Error: Missing opening curly brace].'.red
      end
    end
  end

  def checker_close_curlybrace_function
    @arr_file.each_with_index do |str, index|
      if str.match(/function/) && !(@arr_file.any? { |n| n.match?(/[}]/) })
        puts "[File: #{@file}], " + "[Line: ##{index + 1}], ".blue + '[Error: Missing closing curly brace for opened curly brace].'.red
      end
    end
  end

  # process the linter test
  def process
    checker_indentation
    checker_indentation_end
    checker_function_name
    checker_parentheses_function
    checker_open_curlybrace_function
    checker_close_curlybrace_function
  end
end

file = ARGV[0]
js_linter = JSLinter.new(file)
js_linter.process
