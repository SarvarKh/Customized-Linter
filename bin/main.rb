class JSLinter
  def initialize(file)
    @file = file
    puts 'JS_Linter is being initialized... '
    @arr_file = File.foreach(file).to_a
  end

  def read_file
    @arr_file
  end

  # check for errors
  # check for extra space in the code in one line
  def checker_indentation
    @arr_file.each_with_index do |str, index|
      if str[0,1].match(/\S/) && str.match('  ')
        puts "[File: #{@file}], [Line: ##{index + 1}], [Error: Redundant space]."
      end
    end
  end

  def checker_parentheses_function
    @arr_file.each_with_index do |str, index|
      if str.match(/function/) && !(str.match(/[()]/))
        puts "[File: #{@file}], [Line: ##{index + 1}], [Error: Missing parentheses]."
      end
    end
  end

  def checker_open_curlybrace_function
    @arr_file.each_with_index do |str, index|
      if str.match(/function/) && !(str.match(/[{]/))
        puts "[File: #{@file}], [Line: ##{index + 1}], [Error: Missing opening curly brace]."
      end
    end
  end

  def checker_close_curlybrace_function
    @arr_file.each_with_index do |str, index|
      if str.match(/function/)
        if !(@arr_file.any? {|n| n.match?(/[}]/)})
          puts "[File: #{@file}], [Line: ##{index + 1}], [Error: Missing closing curly brace for opened curly brace]."
        end
      end
    end
  end

  # process the linter test
  def process
    # checker_indentation
    # checker_parentheses_function
    # checker_curlybraces_function
    checker_close_curlybrace_function
  end
end

file = ARGV[0]
js_linter = JSLinter.new(file)
js_linter.process
