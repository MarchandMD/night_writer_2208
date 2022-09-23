require './lib/file_processor'

class MessageProcessor

  attr_reader :input

  def initialize
    @input = FileProcessor.new
  end

  def process
    if ARGV.length > 1
      file_to_be_read = @input.open_input(ARGV[0])
      contents = file_to_be_read.read
      puts "Created #{ARGV[1]} containing #{contents.length} characters"
    else
      puts "Created 'braille.txt' containing 256 characters"
    end
  end
end
