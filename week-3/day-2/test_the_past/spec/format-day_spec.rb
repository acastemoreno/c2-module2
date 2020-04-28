require_relative '../lib/format-day'

describe "Format Day" do
  it "return formate date 1" do
    date = Time.new(2020, 4, 10)
    expect(format_date(date)).to eql("April 10, del 2020")
  end

  it "return formate date 2" do
    date = Time.new(2019, 1, 10)
    expect(format_date(date)).to eql("January 10, del 2019")
  end

  it "return formate date 3" do
    date = Time.new(1991, 12, 16)
    expect(format_date(date)).to eql("December 16, del 1991")
  end
end