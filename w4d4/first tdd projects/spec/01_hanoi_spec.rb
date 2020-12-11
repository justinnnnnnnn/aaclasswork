require "01_hanoi"




describe TowersOfHanoi do

  
  subject(:game) {TowersOfHanoi.new}

  describe "#initialize" do
    it "it should set starting game stack" do
      expect(game.stacks).to eq([ [4, 3, 2, 1], [], [] ])
    end
  end

  describe "#win?" do
    context "game over checker" do 
    it "should return win message if true / continue game if false" do
      
    end

    it "should return number of rounds" do
      
    end

    end
  end







#method for movement
#how we're showing it
#class method for winning

#starting stack = all elements
#stacks = [ [4, 3, 2, 1], [], [] ]