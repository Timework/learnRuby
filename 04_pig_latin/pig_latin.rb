def trans(word)
    vowels = "aeiou"
    if vowels.include?(word[0]) && (word[0] != "u" || word[-1] != "q")
        return word + "ay"
    else
        splitWord = word.split("")
        newWord = splitWord.rotate.join("")
        return trans(newWord)
    end
end
def translate(sent)
    finishWord = []
    newWords = sent.split(" ")
    newWords.each do |word|
        finishWord << trans(word)
    end
    finishWord.join(" ")
end
