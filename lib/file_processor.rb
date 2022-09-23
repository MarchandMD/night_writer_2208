class FileProcessor

  attr_reader :input_file

  def initialize
    @input_file = nil

  end

  def open_input(path)
    @input_file = File.open(path, "r")
  end
end