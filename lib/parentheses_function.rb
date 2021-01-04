module ParenthesesFunction
  def checker_parentheses_function
    @arr_file.each_with_index do |str, index|
      if str.match(/function/) && !str.match(/[()]/)
        puts "[File: #{@file}], " + "[Line: ##{index + 1}], ".blue + '[Error: Missing parentheses].'.red
      end
    end
  end
end