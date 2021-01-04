module FunctionName
  def checker_function_name
    @arr_file.each_with_index do |str, index|
      if str.match(/function/) && str.match(/_/)
        puts "[File: #{@file}], " + "[Line: ##{index + 1}], ".blue + '[Style Error: Prefer CamelCase over snake_case].'.red
      end
    end
  end
end