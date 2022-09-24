require './lib/dictionary'
require './lib/file_processor'

class NightWriter
  attr_reader :file_handler, :dictionary, :braille_array, :braille_data

  def initialize(file_handler = FileProcessor.new)
    @file_handler = file_handler
    @dictionary = Dictionary.new
    @braille_array = convert_to_braille
    @braille_data = ['', '', '']
  end

  def convert_to_braille
    @file_handler.separate_letters.map do |x|
      @dictionary.to_braille(x)
    end
  end

  def print_a_confirmation_message
    puts "Created #{@file_handler.output_filename} containing #{@braille_array.length} characters"
  end

  def extract_individual_rows_from_braille
    @braille_array.each do |braille_letter|
      @braille_data[0] += "#{braille_letter[0][0]}#{braille_letter[0][1]}"
      @braille_data[1] += "#{braille_letter[1][0]}#{braille_letter[1][1]}"
      @braille_data[2] += "#{braille_letter[2][0]}#{braille_letter[2][1]}"
    end
  end

  def fewer_than_forty_braille_characters?
    @braille_data[0].length <= 80
  end

  def more_than_forty_braille_characters?
    @braille_data[0].length > 80
  end

  def write_the_braille_data(array)
    array.each do |row_of_braille|
      @file_handler.output.write(row_of_braille)
      @file_handler.output.write("\n")
    end
  end

  def write_then_remove_the_braille_data(array)
    array.each do |row_of_braille|
      @file_handler.output.write(row_of_braille.slice!(0, 80))
      @file_handler.output.write("\n")
    end
  end

  def braille_data_all_gone?
    @braille_data[0].length <= 0
  end

  def write_to_file
    if fewer_than_forty_braille_characters?
      write_the_braille_data(@braille_data)
    elsif more_than_forty_braille_characters?
      until braille_data_all_gone?
        write_then_remove_the_braille_data(@braille_data)
      end
    end
  end

  def process
    extract_individual_rows_from_braille
    write_to_file
    print_a_confirmation_message
  end
end