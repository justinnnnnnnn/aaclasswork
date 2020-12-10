def my_uniq(a)
    banana = []
    a.map do |el|
        banana << el if !banana.include?(el)
    end
    banana
end
