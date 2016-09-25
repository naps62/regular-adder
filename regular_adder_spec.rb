require_relative "regular_adder"

RSpec.describe RegularAdder do
  it "works for 1 + 2" do
    adder = RegularAdder.new("+ 1 2")

    expect(adder.parse).to eq "3"
  end

  it "works for 12337 + 173" do
    adder = RegularAdder.new("+ 12337 173")

    expect(adder.parse).to eq "12532"
  end

  it "works for 1 + 0" do
    adder = RegularAdder.new("+ 1 0")

    expect(adder.parse).to eq "1"
  end

  it "works for 10 + 10" do
    adder = RegularAdder.new("+ 10 10")

    expect(adder.parse).to eq "20"
  end

  it "works for 0 + 0" do
    adder = RegularAdder.new("+ 0 0")

    expect(adder.parse).to eq "0"
  end
  it "works for 0 + 1" do
    adder = RegularAdder.new("+ 0 1")

    expect(adder.parse).to eq "1"
  end
end
