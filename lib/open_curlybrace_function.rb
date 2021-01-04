module OpenCurlybrace
  def checker_open_curlybrace_function
    @arr_file.each_with_index do |str, index|
      if str.match(/function/) && !str.match(/[{]/)
        puts "[File: #{@file}], " + "[Line: ##{index + 1}], ".blue + '[Error: Missing opening curly brace].'.red
      end
    end
  end
end