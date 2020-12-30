require_relative './reader.rb'
require_relative './checker.rb'

# top-level class documentation
class JSLinterControl
  def initialize(file)
    @file = file
    @reader = Reader.new(@file)
  end

  # def read_file
  #   reader = Reader.new(@file)
  #   reader.arr_file
  # end

  # if File.exist?(@file)
  #   read_file
  # end
end
