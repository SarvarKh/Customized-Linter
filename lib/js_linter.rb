require_relative './file_reader'
require_relative './checker'
# top-level class documentation
class JSLinterControl
  def initialize(file)
    @file = file
    Reader.new(file)
  end
  puts 'Cool! I did it!'
end
