require_relative './file-reader.rb' 
require_relative './checker.rb'

class JSLinterControl
  def initialize(file)
    @file = file
    read = Reader.new(file)
  end
  puts "Cool! I did it!"
end