require_relative '../lib/non-duplicates-values'

describe "Non Duplicate Values" do
  it "return no duplicate values 1" do
    expect(non_duplicated_values([1,2,2,3,3,4,5])).to eql([1,4,5])
  end

  it "return no duplicate values 2" do
    expect(non_duplicated_values([1,2,2,3,4])).to eql([1,3,4])
  end

  it "return no duplicate values 3" do
    expect(non_duplicated_values([1,2,2,1])).to eql([])
  end
end