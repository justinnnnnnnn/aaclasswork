class MaxIntSet
  
  attr_reader :store #, :max

  def initialize(max)
    @store = Array.new(max, false)
    # each index of @still will correspond to an item with a value true or false
    # @max = max

  end

  def insert(num)
    raise "Out of bounds" if num > @store.length - 1 || num < 0
    @store[num] = true
    
  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    if @store[num] == true
      return true
    else
      return false
    end
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
    #save @store[idx] as a variable, do @store[idx].each, compare eles to num
    
    
    # idx = num % @store.length
    # if @store[idx] == num
    #   true
    # else
    #   false
    # end
    
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end