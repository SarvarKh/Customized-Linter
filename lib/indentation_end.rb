module IndentationEnd
  def checker_indentation_end
    @arr_file.each_with_index do |str, index|
      if str[str.length - 2] == ' '
        puts "[File: #{@file}], " + "[Line: ##{index + 1}], ".blue + '[Error: Extra space at the end of the line].'.red
      end
    end
  end
end