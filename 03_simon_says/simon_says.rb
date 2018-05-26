#write your code here
def echo str
    str
end

def shout str
    str.upcase
end

def repeat str, num=2
    temp = (str+ " ")*num
    temp[0..-2]
end

def start_of_word s, i
    s[0..i-1]
end

def first_word s
    s.split(" ")[0]
end

def titleize s
    littleWords = ["and", "over", "the"]
    s = s.split(" ")

    s.each do |a|
        if !littleWords.include? a
            a.capitalize!
        end
    end
    s[0].capitalize!
    return s.join(" ")
end