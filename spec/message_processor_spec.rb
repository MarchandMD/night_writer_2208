require 'spec_helper'

RSpec.describe MessageProcessor do
  it 'exists' do
    msg = MessageProcessor.new
    expect(msg).to be_a MessageProcessor
  end

  describe '#process' do
    it 'puts a line of text to the terminal, without newline' do
      msg = MessageProcessor.new
      expect{ msg.process }.to output.to_stdout
    end
  end
end