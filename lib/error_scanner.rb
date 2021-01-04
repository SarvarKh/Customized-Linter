class ErrorScanner
  def initialize(file)
    @file = file
    @arr_file = File.foreach(@file).to_a
  end

  def checker_indentation
    @arr_file.each_with_index do |str, index|
      if str[0, 1].match(/\S/) && str.match('  ')
        error = "[File: #{@file}], " + "[Line: ##{index + 1}], " + '[Error: Redundant space].'
        puts error
        return error
      end
    end
  end

  def checker_indentation_end
    @arr_file.each_with_index do |str, index|
      if str[str.length - 2] == ' '
        error = "[File: #{@file}], " + "[Line: ##{index + 1}], " + '[Error: Extra space at the end of the line].'
        puts error
        return error
      end
    end
  end

  def checker_function_name
    @arr_file.each_with_index do |str, index|
      if str.match(/function/) && str.match(/_/)
        error = "[File: #{@file}], " + "[Line: ##{index + 1}], " + '[Style Error: Prefer CamelCase over snake_case].'
        puts error
        return error
      end
    end
  end

  def checker_parentheses_function
    @arr_file.each_with_index do |str, index|
      if str.match(/function/) && !str.match(/[()]/)
        error = "[File: #{@file}], " + "[Line: ##{index + 1}], " + '[Error: Missing parentheses].'
        puts error
        return error
      end
    end
  end

  def checker_open_curlybrace_function
    @arr_file.each_with_index do |str, index|
      if str.match(/function/) && !str.match(/[{]/)
        error = "[File: #{@file}], " + "[Line: ##{index + 1}], " + '[Error: Missing opening curly brace].'
        puts error
        return error
      end
    end
  end

  def checker_close_curlybrace_function
    @arr_file.each_with_index do |str, index|
      if str.match(/function/) && !(@arr_file.any? { |n| n.match?(/[}]/) })
        error = "[File: #{@file}], " + "[Line: ##{index + 1}], " + '[Error: Missing closing curly brace for opened curly brace].'
        puts error
        return error
      end
    end
  end
end