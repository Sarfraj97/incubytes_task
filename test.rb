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

  it 'handles new line instead of comma' do
    expect(Main.add("1\n2,3")).to eq(6)
  end

  it 'handles deliminator' do
    expect(Main.add("//;\n2;2")).to eq(4)
  end

  it 'handles deliminator with more numbers' do
    expect(Main.add("//;\n2;2;3;4;11")).to eq(22)
  end

  it 'handles deliminator with more numbers' do
    expect(Main.add("//+\n2+2+3+4+11")).to eq(22)
  end

  it "handle negative numbers by raising error" do
    expect { Main.add("1,-2,-3") }
      .to(raise_error do |error|
        expect(error.message).to eq "Negative numbers not allowed: -2,-3"
      end)
  end

  it "handle negative numbers by raising error" do
    expect { Main.add("1,-2") }
      .to(raise_error do |error|
        expect(error.message).to eq "Negative numbers not allowed: -2"
      end)
  end
end