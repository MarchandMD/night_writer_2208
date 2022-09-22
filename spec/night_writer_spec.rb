require 'spec_helper'

RSpec.describe NightWriter do
  it 'exists' do
    night_writer = NightWriter.new
    expect(night_writer).to be_a NightWriter
  end

  describe '#message' do
    it 'can print a message to the console' do
      night_writer = NightWriter.new
      expect { night_writer.message }.to output("Created 'braille.txt' containing 256 characters").to_stdout
    end
  end
end
