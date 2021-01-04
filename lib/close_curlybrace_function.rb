module CloseCurlybrace
  def checker_close_curlybrace_function
    @arr_file.each_with_index do |str, index|
      if str.match(/function/) && !(@arr_file.any? { |n| n.match?(/[}]/) })
        puts "[File: #{@file}], " + "[Line: ##{index + 1}], ".blue + '[Error: Missing closing curly brace for opened curly brace].'.red
      end
    end
  end
end