require "first_tdd"


describe "my_uniq" do 
  let(:array) {[1, 2, 2, 2, 3, 4]}
  let(:output_arr) {my_uniq(array.dup)}

  it "remove duplicates" do
    array.each do |el| 
      expect(output_arr.count(el)).to eq(1)
    end
    
  end
end

describe "two_sum" do
  let(:array){[-1, 1, 4, 5, -3, 1]}
  let(:pairs){two_sum(array)}

  it "finds all pairs and positions where eles sum is zero" do
    expect(pairs).to eq([[0, 1],[0, 5]])
  end
end

describe "my_transpose" do
  let (:matrix) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}
  
  it  "transposes a matrix" do
    expect(my_tranpose(matrix)).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])

  end
end