# top-level class documentation
class Reader
  attr_reader :arr_file

  def initialize(file)
    arr_file = File.foreach(file).to_a
    puts arr_file
  end
end
