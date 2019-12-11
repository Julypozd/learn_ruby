#write your code here
def add(a,b)
    a + b
end

def subtract(a,b)
    a - b
end

def sum(a)
    (a.inject(:+)).to_i
end

def multiply(nums)
    nums.inject(:*)
end

def power(a,b)
    a**b
end

def factorial(num)
    if num < 0
        return nil
    end
    if num == 0
        return 1
    end
    result = 1
    while num > 0
    result = result * n
    num -= 1
    end
return result
end

puts multiply([2,2,2])
puts power(4,2)
puts factorial(0)