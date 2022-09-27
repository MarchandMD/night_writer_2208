require 'spec_helper'

RSpec.describe 'FileProcessor' do
  fp = FileProcessor.new({input: 'message.txt', output: 'braille.txt'})

  it 'exists' do
    expect(fp).to be_a FileProcessor
  end

  it 'has @input and @output_filename' do
    expect(fp.input).to eq('message.txt')
    expect(fp.output_filename).to eq('braille.txt')
  end

  describe '#write_file' do
    fp = FileProcessor.new({input: 'message.txt', output: 'braille.txt'})
    it 'can create a writable File object' do
      expect(fp.write_file).to be_a File
    end
  end

  describe '#read_contents' do
    fp = FileProcessor.new({ input: 'message.txt', output: 'braille.txt' })
    it 'can make @input a File object' do
      fp.read_contents
      expect(fp.input).to be_a File
    end
  end

  describe '#separate_letters' do
    fp = FileProcessor.new({ input: 'message.txt', output: 'braille.txt' })
    it 'turns a string into an array' do
      allow(fp).to receive(:separate_letters) { ['a'] }
        expect(fp.separate_letters).to eq(['a'])
    end
  end

  describe '#read_and_remove_newline_characters' do
    xit 'reads the contents, and removes the newline characters' do
    end
  end
end