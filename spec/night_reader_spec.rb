require 'spec_helper'
require 'pry'

RSpec.describe NightReader do
  file_processor = FileProcessor.new({ input: 'braille.txt', output: 'sample.txt' })
  night_reader = NightReader.new(file_processor)

  describe '#init' do
    it 'exists' do
      expect(night_reader).to be_a NightReader
    end

    it 'has @file_handler, @dictionary, @array_from_parsed_braille, @message, @characters_in_message, @message_container, @input_data' do
      expect(night_reader.file_handler).to be_a FileProcessor
      expect(night_reader.dictionary).to be_a Dictionary
      expect(night_reader.array_from_parsed_braille).to eq(nil)
      expect(night_reader.message).to eq('')
      expect(night_reader.characters_in_message).to eq(0)
      expect(night_reader.message_container).to eq([])
      expect(night_reader.input_data).to eq(nil)
    end
  end

  describe '#convert_dictionary' do
    it 'has values of the alphabet, lower case, plus a space' do
      night_reader.convert_dictionary
      expect(night_reader.dictionary.values[0]).to eq('a')
      expect(night_reader.dictionary.values[25]).to eq('z')
      expect(night_reader.dictionary.values[26]).to eq(' ')
      expect(night_reader.dictionary.values.length).to eq(27)
    end
  end

  describe '#character_containers_needed' do
    it 'measures the english characters neeeded in the message, counting 6 braille characters at a time' do
      night_reader.array_from_parsed_braille = [['0'], ['.'], ['.'], ['.'], ['.'], ['.']]
      night_reader.character_containers_needed
      expect(night_reader.characters_in_message).to eq(1)
    end
  end

  describe '#create_character_containers' do
    it 'adds empty arrays to the @message_container, to represent a letter in the message, which will be populated with braille characters' do
      night_reader.array_from_parsed_braille = [['0'], ['.'], ['.'], ['.'], ['.'], ['.']]
      expect(night_reader.characters_in_message).to eq(1)
      night_reader.create_character_containers
      expect(night_reader.message_container).to eq([[]])
    end
  end

  describe '#create_braille_pairs' do
    it 'grabs the raw input data, creates braille pairs, and turns them into an array' do
      expect(night_reader.create_braille_pairs).to eq([['0', '.'], ['.', '.'], ['.', '.']])
    end
  end

  describe '#fill_character_containers' do
    xit 'cycles through the @message_container and populates each character_container with the braille data' do
      night_reader.array_from_parsed_braille = [['0'], ['.'], ['.'], ['.'], ['.'], ['.']]
      night_reader.character_containers_needed
      raw_braille_pairs = night_reader.array_from_parsed_braille.slice!(0, 120)
      night_reader.fill_character_containers(raw_braille_pairs)
      expect(night_reader.message_container).to eq(4)
    end
  end

  describe '#flatten_message' do
    it 'reduces the character containers holding multi-dimensional arrays of braille pairs into one-dimensional arrays' do
      expect(night_reader.message_container).to eq([[]])
      night_reader.fill_character_containers
      expect(night_reader.message_container).to eq([[["0", "."], [".", "."], [".", "."]]])
      night_reader.flatten_message
      expect(night_reader.message_container).to eq([["0", ".", ".", ".", ".", "."]])
    end
  end
end
