require 'spec_helper'

RSpec.describe MessageProcessor do
  input = {
    input: 'sample.txt',
    output: 'braille.txt'
  }
  msg = MessageProcessor.new(input)

  it 'exists' do
    expect(msg).to be_a MessageProcessor
  end

  it 'has @input to be nil by default' do
    expect(msg.input).to eq('sample.txt')
  end

  it 'has @output' do
    expect(msg.output).to eq('braille.txt')
  end

  it 'has @contents set to nil by default' do
    expect(msg.contents).to eq(nil)
  end

  describe '#process' do
    input = {
    input: 'sample.txt',
    output: 'braille.txt'
  }
    msg = MessageProcessor.new(input)
    it 'puts a line of text to the terminal' do
      expect { msg.process }.to output.to_stdout
    end
    it 'puts a specific line of text to the terminal' do
      expect { msg.process }.to output("Created 'braille.txt' containing 256 characters\n").to_stdout
    end
  end
end
