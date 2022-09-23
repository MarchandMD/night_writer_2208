require 'spec_helper'

RSpec.describe Dictionary do
  it 'exists' do
    dictionary = Dictionary.new
    expect(dictionary).to be_a Dictionary
  end

  describe '#to_braille' do
    it 'converts a string letter to braille' do
      dictionary = Dictionary.new
      expect(dictionary.to_braille('a')).to eq([['0', '.'], ['.', '.'], ['.', '.']])
      expect(dictionary.to_braille('b')).to eq([['0', '.'], ['0', '.'], ['.', '.']])
      expect(dictionary.to_braille('z')).to eq([['0', '.'], ['.', '0'], ['0', '0']])
    end
  end
end