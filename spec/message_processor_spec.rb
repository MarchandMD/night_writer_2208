require 'spec_helper'

RSpec.describe MessageProcessor do
  it 'exists' do
    msg = MessageProcessor.new
    expect(msg).to be_a MessageProcessor
  end
end