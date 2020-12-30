class Reader
  def initialize(file)
    @file = file
    file = File.open(file)
    arr_file = file.to_a()
    puts arr_file
  end
end