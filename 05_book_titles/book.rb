class Book
    attr_reader :title

    #writer method
    def title=(str)
        exceptions=["a", "the", "and", "in", "of", "an", "in"]

        array = str.split(" ")
        array.each do |a|
            if !exceptions.include? a
                a.capitalize!
            end
        end
        array.first.capitalize!
        @title = array.join(" ")
    end

end