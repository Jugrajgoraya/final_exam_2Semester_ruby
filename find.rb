# Using blocks, yield and a loop implement a higher-order function find without using Ruby's own find


def finder (arr)
    for i in arr
        if yield(i)
           return value = i
        end
    end
end    

p finder (1..100) { |i| i % 5 == 0 and i % 7 == 0} #=> 35
