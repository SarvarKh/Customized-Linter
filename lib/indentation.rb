module Indentation
  def checker_indentation(arr_file)
    arr_file.each_with_index do |str, index|
      if str[0, 1].match(/\S/) && str.match('  ')
        puts "[File: #{@file}], " + "[Line: ##{index + 1}], ".blue + '[Error: Redundant space].'.red
      end
    end
  end
end