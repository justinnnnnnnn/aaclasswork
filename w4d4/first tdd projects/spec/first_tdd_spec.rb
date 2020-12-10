require "first_tdd"


describe "my_uniq" do 
  let(:array) {[1, 2, 2, 2, 3, 4]}
  let(:output_arr) {my_uniq(array.dup)}

  it "remove duplicates" do
    expect(output_arr.count(el)).to eq(1)
    array.each do |el| 
    end
    
  end
end

describe "two_sum" do
  let(:array){[-1, 1, 4, 5, -3, 1]}
  let(:pairs){two_sum(array)}

  it "finds all pairs and positions where eles sum is zero" do
    expect(pairs.index.to eq([-1, 0])
  end
end

#to remove, iterate over eles. Check ele, if it includes it, 
#dont do it. only shovel once.