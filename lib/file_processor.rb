class FileProcessor
  attr_reader :input, :output, :output_filename, :contents

  def initialize(input = { input: ARGV[0], output: ARGV[1] })
    @input = input.fetch(:input)
    @output_filename = input.fetch(:output)
    @output = write_file
  end

  def read_contents
    @input = File.open(@input, 'r')
    @input.read
  end

  def separate_letters
    read_contents.split('')
  end

  def write_file
    @output = File.open(@output_filename, 'w')
  end

  def parse_braille
    read_contents.gsub!("\n", "")
  end
end
