class ErrorScanner
  def initialize(file)
    @arr_file = file
  end

  def checker_indentation
    @arr_file.each_with_index do |str, index|
      if str[0, 1].match(/\S/) && str.match('  ')
        puts "[File: #{@file}], " + "[Line: ##{index + 1}], ".blue + '[Error: Redundant space].'.red
      end
    end
  end

  def checker_indentation_end
    @arr_file.each_with_index do |str, index|
      if str[str.length - 2] == ' '
        puts "[File: #{@file}], " + "[Line: ##{index + 1}], ".blue + '[Error: Extra space at the end of the line].'.red
      end
    end
  end

  def checker_function_name
    @arr_file.each_with_index do |str, index|
      if str.match(/function/) && str.match(/_/)
        puts "[File: #{@file}], " + "[Line: ##{index + 1}], ".blue + '[Style Error: Prefer CamelCase over snake_case].'.red
      end
    end
  end

  def checker_parentheses_function
    @arr_file.each_with_index do |str, index|
      if str.match(/function/) && !str.match(/[()]/)
        puts "[File: #{@file}], " + "[Line: ##{index + 1}], ".blue + '[Error: Missing parentheses].'.red
      end
    end
  end

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
end