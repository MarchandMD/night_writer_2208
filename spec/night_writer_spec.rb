require 'spec_helper'

RSpec.describe NightWriter do
  night_writer = NightWriter.new
  it 'exists' do
    expect(night_writer).to be_a NightWriter
  end
end