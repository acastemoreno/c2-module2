require_relative '../lib/vowel'

describe "Ping Pong" do
  it "return no duplicate values 1" do
    expect("a".vowel?).to eql(true)
  end

  it "return no duplicate values 2" do
    expect("w".vowel?).to eql(false)
  end

  it "return no duplicate values 3" do
    expect("a\na".vowel?).to eql(false)
  end
end