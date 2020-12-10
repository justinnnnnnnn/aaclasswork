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