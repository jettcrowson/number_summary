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

def mode(list)
    most_occurences = [list[0]]
    list.each do |num| 
        if list.count(num) > list.count(most_occurences[0])
            most_occurences = [num]
        elsif list.count(num) == list.count(most_occurences[0])
            most_occurences.push(num)
        end
    end

    return most_occurences
end

def longest_run(list)
    longest, temp = 0, 0
    previous = list[0] - 1

    list.each do |num|
        if num > previous
            temp+=1
        else
            temp > longest ? longest = temp : pass
            temp = 1
        end
        previous = num
    end

    return longest > temp ? longest : temp
end 