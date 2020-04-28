require_relative '../lib/anchorize'

describe "Anchorize" do
  it "return anchorize text of single url" do
    expect(anchorize("hello http://world.com !")).to eql("hello <a href=\"http://world.com\">http://world.com</a> !")
  end

  it "return anchorize text of urls" do
    expect(anchorize("hello http://world.com ! hello http://world.com !")).to eql("hello <a href=\"http://world.com\">http://world.com</a> ! hello <a href=\"http://world.com\">http://world.com</a> !")
  end

  it "return anchorize of optional !" do
    expect(anchorize("hello http://world.com")).to eql("hello <a href=\"http://world.com\">http://world.com</a>")
  end

  it "return anchorize of optional hello" do
    expect(anchorize("http://world.com !")).to eql("<a href=\"http://world.com\">http://world.com</a> !")
  end
  
end