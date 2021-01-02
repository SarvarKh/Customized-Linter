class JSLinter
  def initialize(file)
    puts 'JS_Linter is being initialized... '
    @arr_file = File.foreach(file).to_a
  end

  def read_file
    @arr_file
  end

  def process
    read_file
  end
end

file = ARGV[0]
js_linter = JSLinter.new(file)
puts js_linter.process
