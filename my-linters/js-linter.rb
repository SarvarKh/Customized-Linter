require_relative './file-reader.rb' 
require_relative './checker.rb'

class JSLinter
  def initialize(file)
    @file = file
  end
end