def mean(list)
    total = 0;
    list.each{ |num| total += num }
    return total.to_f / list.length
end
