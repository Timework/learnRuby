def echo(word)
    word
end
def shout(word)
    word.upcase
end
def repeat(word, num = 2)
     ([word] * num).join(" ")
end
def start_of_word(word, num)
    word[0...num]
end
def first_word(sent)
    sent.split(" ")[0]
end
def titleize(sent)
    forbidden = "the and over"
    words = sent.split(" ")
    newWords = []
    words.each do |word|
        if forbidden.include?(word)
            newWords << word
        else
        newWords << word.capitalize
        end
    end
    newWords.first.capitalize!
    newWords.join(" ")
end