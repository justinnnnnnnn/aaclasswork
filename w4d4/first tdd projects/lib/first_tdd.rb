def my_uniq(a)
    banana = []
    a.map do |el|
        banana << el if !banana.include?(el)
    end
    banana
end

def two_sum(arr)
    pairs = []
    arr.each_with_index do |el1, i1|
        arr.each_with_index do |el2, i2|
            if arr[i1] + arr[i2] == 0 && i2 > i1
               pairs << [i1, i2]
            end
        end
    end
    pairs
end

def my_transpose(arr)
    rotated = Array.new(arr.length) {Array.new(arr.length)}
    arr.each_with_index do |row, i1|
        row.each_with_index do |el2, i2|
            rotated[i1][i2] = arr[i2][i1]
        end
    end
    rotated
end

def stock_picker(days)
    
    trade_possibilites = Hash.new()
    days.each_with_index do |el1, i1|
        days.each_with_index do |el2, i2|
         if i1 < i2
            trade_possibilites[[i1,i2]] = el2 - el1
        end
      end
    end
    trade_possibilites.sort_by{|k, v| v}[-1][0]
end

p stock_picker([8, 2, 4, 5, 6, 7, 3, 1])

