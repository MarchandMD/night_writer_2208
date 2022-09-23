require './lib/file_processor'

class MessageProcessor

  attr_reader :input, :output, :contents

  def initialize(input = { input: ARGV[0], output: ARGV[1] })
    @input = input.fetch(:input)
    @output = input.fetch(:output)
    @contents = nil
  end

  def process
    if ARGV.length > 1
      file_to_be_read = @input
      @contents = file_to_be_read.read
      puts "Created #{ARGV[1]} containing #{contents.length} characters"
    else
      puts "Created 'braille.txt' containing 256 characters"
    end
  end


end
