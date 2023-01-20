require './lib/dictionary'
require './lib/file_processor'
require 'pry'

class NightWriter
  attr_reader :file_processor, :dictionary, :rows_of_braille
  attr_accessor :message_container

  def initialize(file_processor = FileProcessor.new({ input: ARGV[0], output: ARGV[1] }))
    @file_processor = file_processor
    @dictionary = Dictionary.new
    @message_container = convert_to_braille
    @rows_of_braille = ['', '', '']
  end

  def convert_to_braille
    @file_processor.separate_letters.map do |x|
      @dictionary.to_braille(x)
    end
  end

  def print_a_confirmation_message
    puts "Created #{@file_processor.output_filename} containing #{@message_container.length} characters"
  end

  def separate_braille_by_row
    @message_container.each do |character_container|
      @rows_of_braille[0] += "#{character_container[0][0]}#{character_container[0][1]}"
      @rows_of_braille[1] += "#{character_container[1][0]}#{character_container[1][1]}"
      @rows_of_braille[2] += "#{character_container[2][0]}#{character_container[2][1]}"
    end
  end

  def fewer_than_forty_braille_characters?
    @rows_of_braille[0].length <= 80
  end

  def more_than_forty_braille_characters?
    @rows_of_braille[0].length > 80
  end

  def write_the_braille_data(separate_braille_rows)
    separate_braille_rows.each do |row_of_braille|
      @file_processor.output.write(row_of_braille)
      @file_processor.output.write("\n")
    end
  end

  def write_then_remove_the_braille_data(separate_braille_rows)
    separate_braille_rows.each do |row_of_braille|
      @file_processor.output.write(row_of_braille.slice!(0, 80))
      @file_processor.output.write("\n")
    end
  end

  def braille_data_all_gone?
    @rows_of_braille[0].length <= 0
  end

  def write_to_file
    if fewer_than_forty_braille_characters?
      write_the_braille_data(@rows_of_braille)
    elsif more_than_forty_braille_characters?
      write_then_remove_the_braille_data(@rows_of_braille) until braille_data_all_gone?
    end
  end

  def process
    separate_braille_by_row
    write_to_file
    print_a_confirmation_message
  end
end

# comment the following line prior to running tests
# NightWriter.new.process
