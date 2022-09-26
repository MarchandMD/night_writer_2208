require './lib/dictionary'
require './lib/file_processor'

class NightReader
  attr_reader :file_handler, :dictionary, :array_from_parsed_braille, :message, :message_container, :characters_in_message, :input_data
  attr_accessor :array_from_parsed_braille

  def initialize(file_handler = FileProcessor.new, dictionary = Dictionary.new, array_from_parsed_braille = nil, message = '', message_container = [], input_data = nil)
    @file_handler = file_handler
    @dictionary = dictionary
    @array_from_parsed_braille = array_from_parsed_braille
    @message = message
    @characters_in_message = 0
    @message_container = message_container
    @input_data = input_data
  end

  def convert_dictionary
    @dictionary = @dictionary.braille.invert.transform_keys(&:flatten)
  end

  def character_containers_needed(raw_braille_pairs = @array_from_parsed_braille)
    @characters_in_message = raw_braille_pairs.flatten.length / 6
  end

  def create_character_containers
    @characters_in_message.times do
      @message_container << []
    end
  end

  
end