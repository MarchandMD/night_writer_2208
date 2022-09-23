require 'spec_helper'

RSpec.describe 'FileProcessor' do
  it 'exists' do
    fp = FileProcessor.new
    expect(fp).to be_a FileProcessor
  end

  it 'has @input_file set to nil by default' do
    fp = FileProcessor.new
    expect(fp).to have_attributes({input_file: nil})
  end

  describe '#open_input' do
    it 'opens a file and reads the contents' do
      fp = FileProcessor.new
      expect(fp.open_input(ARGV[0])).to be_a File
    end
  end
end