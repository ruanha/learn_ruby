#write your code here
def translate str
    a = str.split(" ")
    newStr = []

    for i in 0..a.length-1
        w = a[i]

        #rule 1: vocals 
        if w =~ /^[aeiouy]/
            newStr[i] = w<<"ay"

        #rule 2: 1 leading consonant but not "qu"
        elsif w =~ /^[bcdfghjklmnpqrstvwxz][aeiouy]/ && w !~ /^qu/
            newStr[i] = w[1..-1]<<w[0]<<"ay"

        #rule 2: 2 leading consonants or leading "qu" but not ".qu"
        elsif (w =~ /^[bcdfghjklmnpqrstvwxz]{2}[aeiouy]/ || w =~ /^qu/) && w !~ /^.qu/
            newStr[i] = w[2..-1]<<w[0..1]<<"ay"

        #rule 2: 3 leading consonants or leading ".qu"
        elsif w =~ /^[bcdfghjklmnpqrstvwxz]{3}[aeiouy]/ || w =~ /^.qu/
            newStr[i] = w[3..-1]<<w[0..2]<<"ay"

        end
    end
    newStr.join(" ")
end