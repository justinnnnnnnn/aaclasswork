require "byebug"

class MaxIntSet
  
  attr_reader :store #, :max

  def initialize(max)
    @store = Array.new(max, false)
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
  attr_accessor :store
  
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    # debugger
      self[num] << num
    

    
  end

  def remove(num)
      self[num].delete_at(self[num].index(num))
  end

  def include?(num)
    idx = num % @store.length
    num_bucket = @store[idx]
    num_bucket.each do |ele|
     return true if ele == num
    end
    false
  end

  private

  def [](num)
    bucket = num % num_buckets
    @store[bucket]
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
    if !self[num].include?(num)
    self[num] << num
    @count += 1
    end
  end

  def remove(num)
    if self[num].include?(num)
    self[num].delete_at(self[num].index(num))
    @count -= 1
    end
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    bucket = num % num_buckets
    @store[bucket]
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end
