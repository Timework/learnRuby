class Book
def title=(str)
    title = []
    forbidden = "the a an and in of"
    words = str.split(" ")
    words.each do |word|
        if (forbidden.include? (word)) && word != "i"
            title << word
        else
        title << word.capitalize
        end
    end
    title.first.capitalize!
    @title = title.join(" ")
end
def title
@title
end
end
