# top-level class documentation
class Reader
  attr_reader :arr_file

  def initialize(file)
    @file = file
    file = File.open(file)
    @arr_file = file.to_a
  end
end
