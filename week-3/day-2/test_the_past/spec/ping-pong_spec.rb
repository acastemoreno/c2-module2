require_relative '../lib/ping-pong'

describe "Ping Pong" do
  it "return no duplicate values 1" do
    expect(pingpong(7)).to eql(7)
  end

  it "return no duplicate values 2" do
    expect(pingpong(21)).to eql(-1)
  end

  it "return no duplicate values 3" do
    expect(pingpong(68)).to eql(2)
  end
end