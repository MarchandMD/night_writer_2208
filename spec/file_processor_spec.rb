require 'spec_helper'

RSpec.describe 'FileProcessor' do
  fp = FileProcessor.new({input: 'sample.txt', output: 'braille.txt'})

  it 'exists' do
    expect(fp).to be_a FileProcessor
  end

  it 'has @input and @output_filename' do
    expect(fp.input).to eq('sample.txt')
    expect(fp.output_filename).to eq('braille.txt')
  end

  describe '#write_file' do
    fp = FileProcessor.new({input: 'sample.txt', output: 'braille.txt'})
    it 'can create a writable File object' do
      expect(fp.write_file).to be_a File
    end
  end

  describe '#read_contents' do
    fp = FileProcessor.new({ input: 'sample.txt', output: 'braille.txt' })
    it 'can make @input a File object' do
      fp.read_contents
      expect(fp.input).to be_a File
    end
  end
end