require_relative 'main'
require 'rspec'

RSpec.describe 'main' do
  it 'returns the sum of numbers in the input string' do
    expect(Main.add("1,2")).to eq(3)
    expect(Main.add("10,20")).to eq(30)
    expect(Main.add("5,10,15")).to eq(30)
  end

  it 'returns 0 for an empty string' do
    expect(Main.add("")).to eq(0)
  end

  it 'returns single value when single value given' do
    expect(Main.add("1")).to eq(1)
  end
end