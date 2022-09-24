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
end