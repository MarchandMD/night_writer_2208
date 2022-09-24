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
end