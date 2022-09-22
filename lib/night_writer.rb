require './lib/message_processor'

if ARGV.length > 1
  puts "Created #{ARGV[1]} containing 256 characters"
else
  puts "Created 'braille.txt' containing 256 characters"
end

MessageProcessor.new.process