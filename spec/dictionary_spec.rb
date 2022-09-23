require 'spec_helper'

RSpec.describe Dictionary do
  it 'exists' do
    dictionary = Dictionary.new
    expect(dictionary).to be_a Dictionary
  end
end