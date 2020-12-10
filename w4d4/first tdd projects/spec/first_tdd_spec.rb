require "first_tdd"


describe "uniq" do 
  let(:array) {[1, 2, 2, 2, 3, 4]}
  let(:output_arr) {uniq (array.dup)}
  it "remove duplicates" do
    array.each do |el| 
      expect (output_arr.count(item)).to eq(1)
    end

  end
end


#to remove, iterate over eles. Check ele, if it includes it, dont do it. only shovel once.