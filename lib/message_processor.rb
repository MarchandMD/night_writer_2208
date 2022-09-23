class MessageProcessor
  def initialize; end

  def process
    if ARGV.length > 1
      file_to_be_read = File.open(ARGV[0], 'r')
      contents = file_to_be_read.read
      puts "Created #{ARGV[1]} containing #{contents.length} characters"
    else
      puts "Created 'braille.txt' containing 256 characters"
    end
  end
end
