require 'spec_helper'

RSpec.describe NightReader do
  file_processor = FileProcessor.new({ input: 'braille.txt', output: 'sample.txt' })
  night_reader = NightReader.new(file_processor)
  it 'exists' do
    expect(night_reader).to be_a NightReader
  end
end