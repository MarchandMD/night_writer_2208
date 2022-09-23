class FileProcessor

  attr_reader :input_file, :file_contents

  def initialize
    @input_file = nil
    @file_contents = nil
  end

  def open_input(path)
    @input_file = File.open(path, "r")
    @file_contents = @input_file.read
  end
end