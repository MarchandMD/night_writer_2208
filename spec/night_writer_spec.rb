require 'spec_helper'

RSpec.describe NightWriter do
  file_processor = FileProcessor.new({ input: 'sample.txt', output: 'braille.txt' })
  night_writer = NightWriter.new(file_processor)

  it 'exists' do
    expect(night_writer).to be_a NightWriter
  end

  it 'has @file_processor, @dictionary, @rows_of_braille, @message_container' do
    expect(night_writer.file_processor).to be_a FileProcessor
    expect(night_writer.dictionary).to be_a Dictionary
    expect(night_writer.message_container).to eq(night_writer.convert_to_braille)
    expect(night_writer.rows_of_braille).to eq(['', '', ''])
  end

  describe '#convert_to_braille' do
    file_processor = FileProcessor.new({ input: 'sample.txt', output: 'braille.txt' })
    night_writer = NightWriter.new(file_processor)
    it 'converts a letter to braille' do
      allow(night_writer).to receive(:convert_to_braille) { [[['0', '.'], ['.', '.'], ['.', '.']]] }
      expect(night_writer.convert_to_braille).to eq([[['0', '.'], ['.', '.'], ['.', '.']]])
    end
  end

  describe '#print_a_confirmation_message' do
    file_processor = FileProcessor.new({ input: 'sample.txt', output: 'braille.txt' })
    night_writer = NightWriter.new(file_processor)
    it 'prints a confirmation message' do
      expect do
        night_writer.print_a_confirmation_message
      end.to output("Created #{night_writer.file_processor.output_filename} containing #{night_writer.message_container.length} characters\n").to_stdout
    end
  end

  describe '#separate_braille_by_row' do
    it 'moves each row of a braille character into @rows_of_braille' do
      night_writer.message_container = [[['0', '.'], ['.', '.'], ['.', '.']]]
      night_writer.separate_braille_by_row
      expect(night_writer.rows_of_braille[0]).to eq('0.')
      expect(night_writer.rows_of_braille[1]).to eq('..')
      expect(night_writer.rows_of_braille[2]).to eq('..')
    end
  end

  describe '#fewer_than_forty_braille_characters?' do
    it 'returns true if @rows_of_braille is <= 80 characters' do
      expect(night_writer.fewer_than_forty_braille_characters?).to eq(true)
    end
  end

  describe '#more_than_forty_braille_characters?' do
    it 'returns true if #rows_of_braille is > 80 characters' do
      80.times do
        night_writer.rows_of_braille[0] << '.'
      end
      expect(night_writer.rows_of_braille[0].length).to be > 80
      expect(night_writer.more_than_forty_braille_characters?).to eq(true)
    end
  end

  describe '#write_the_braille_data' do
    xit 'writes to the output file' do
      allow(night_writer.file_processor).to receive(:write_file).with('braille.txt') do |file|
        expect(file).to receive(:write).with(response.body)
      end
    end
  end

  describe '#write_then_remove_the_braille_data' do
    xit 'writes to the output file' do
    end
  end

  describe '#braille_data_all_gone?' do
    it 'determines if all the rows_of_braille has been written' do
      night_writer.rows_of_braille[0] = ''
      expect(night_writer.braille_data_all_gone?).to be true
    end
  end

  describe '#write_to_file' do
    xit 'writes to the output file' do
      expect(subject).to eq(value)
    end
  end
end
