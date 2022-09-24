require 'spec_helper'

RSpec.describe NightWriter do
  file_processor = FileProcessor.new({ input: 'sample.txt', output: 'braille.txt' })
  night_writer = NightWriter.new(file_processor)
  it 'exists' do
    expect(night_writer).to be_a NightWriter
  end

  it 'has @file_handler, @dictionary, @braille_data, @braille_array' do
    expect(night_writer.file_handler).to be_a FileProcessor
    expect(night_writer.dictionary).to be_a Dictionary
    expect(night_writer.braille_array).to eq(night_writer.convert_to_braille)
    expect(night_writer.braille_data).to eq(['', '', ''])
  end

  describe '#convert_to_braille' do
    file_processor = FileProcessor.new({ input: 'sample.txt', output: 'braille.txt' })
    night_writer = NightWriter.new(file_processor)
    it 'converts a letter to braille' do
      expect(night_writer.convert_to_braille).to eq([[['0', '.'], ['.', '.'], ['.', '.']]])
    end
  end

  describe '#print_a_confirmation_message' do
    file_processor = FileProcessor.new({ input: 'sample.txt', output: 'braille.txt' })
    night_writer = NightWriter.new(file_processor)
    it 'prints a confirmation message' do
      expect do
        night_writer.print_a_confirmation_message
      end.to output("Created #{night_writer.file_handler.output_filename} containing #{night_writer.braille_array.length} characters\n").to_stdout
    end
  end
end
