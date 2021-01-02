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
      if str.count(' ') > 1
        puts "[File: #{@file}], [Line: ##{index}], [Error: Redundant space in a string]."
      end
    end
  end

  # process the linter test
  def process
    checker_indentation
  end
end

file = ARGV[0]
js_linter = JSLinter.new(file)
puts js_linter.process
