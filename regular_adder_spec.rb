require_relative "regular_adder"

RSpec.describe RegularAdder do
  it "works for 1 + 2" do
    adder = RegularAdder.new("+ 1 2")

    expect(adder.parse).to eq "3"
  end

  it "works for 12337 + 173" do
    adder = RegularAdder.new("+ 12337 173")

    expect(adder.parse).to eq "12510"
  end
end
