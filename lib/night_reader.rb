require './lib/dictionary'
require './lib/file_processor'

class NightReader
  attr_reader :file_handler, :dictionary, :message, :message_container, :characters_in_message
  attr_accessor :array_from_parsed_braille, :input_data

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

  def fill_character_containers(a_single_row = [["0", "."], [".", "."], [".", "."]])
    @message_container.cycle(3) do |character_container|
      character_container << a_single_row.shift
    end
  end

  def create_braille_pairs
    @input_data = @file_handler.read_and_remove_newline_characters
    @array_from_parsed_braille = @input_data.scan(/../)
    @array_from_parsed_braille = @array_from_parsed_braille.map { |braille_pair| braille_pair.split('') }
  end

  def flatten_message
    @message_container = @message_container.map(&:flatten)
  end

  def print_a_confirmation_message
    puts "Created #{@file_handler.output_filename} containing #{@message.length} characters"
  end

  def grab_the_letters
    @message_container.each do |character_container|
      @message << @dictionary[character_container]
    end
  end

  def process
    convert_dictionary
    create_braille_pairs
    until @array_from_parsed_braille.count.zero?
      @message_container = []
      raw_braille_pairs = @array_from_parsed_braille.slice!(0, 120)
      character_containers_needed(raw_braille_pairs)
      create_character_containers
      fill_character_containers(raw_braille_pairs)
      flatten_message
      @message_container.each do |character_container|
        @message << @dictionary[character_container]
      end
    end
    @file_handler.output.write(@message)
    print_a_confirmation_message
  end

end

