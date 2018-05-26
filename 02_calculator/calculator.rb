#write your code here

def add a, b
    a+b
end

def subtract a, b
    a-b
end

def sum a
    sum = 0
    a.each do |a|
        sum+=a
    end
    return sum
end

def multiply (*a)
    result = 1
    a.each do |a|
        result *=a
    end
    return result
end

def power a, b
    return a**b
end

def factorial a
    result = 1
    for i in 1...(a+1)
        result *= i
    end
    return result
end
