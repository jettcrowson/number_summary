def mean(list)
    total = 0;
    list.each{ |num| total += num }
    return total.to_f / list.length
end

def median(arr)
    list = arr.sort()
    if list.length % 2 == 1
        return list[list.length / 2]
    else
        return mean([list[list.length / 2 - 1], list[list.length / 2]])
    end
end

def standard_deviation(list)
    average = mean(list)
    squared = []
    list.each { |num| squared.push((num - average) ** 2) }
    return Math.sqrt(mean(squared))
end