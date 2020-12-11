require "01_hanoi"




describe TowersOfHanoi do
  let(:stacks) {[ [4, 3, 2, 1], [], [] ]}
  subject(:game) {TowersOfHanoi.new}
  describe "#initialize" do

    it "it should set starting game stack" do
      expect(stacks).to eq([ [4, 3, 2, 1], [], [] ])
    end

    end


end







#method for movement
#how we're showing it
#class method for winning

#starting stack = all elements
#stacks = [ [4, 3, 2, 1], [], [] ]