class TowersOfHanoi

  attr_reader :stacks
  def initialize
    @stacks = [[4, 3, 2, 1], [], [] ]
    @turn_number = 0
  end

  def win?
    if @stacks == [[], [], [4, 3, 2, 1]]
      puts "You win! Turn: #{@turn_number}"
      return true
    end
    false
  end


end