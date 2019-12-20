def translate(string)
    words = string.split(' ')
    result = []
    words.each do |word|
        result << handle_word(word)
    end
    final = result.join(" ")
        if final.include?(".")
        final.capitalize!
        end
    final
end

def handle_word(word)
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'x', 'z', 'w', 'y']
    two_consonants = ['th', 'Th', 'qu', 'bl', 'cl', 'fl', 'gl', 'pl', 'sl', 'br', 'cr', 'dr', 'fr', 'gr', 'pr', 'tr', 'sc', 'sk', 'sm', 'sn', 'sp', 'st', 'sw', 'tw', 'ch']
    three_consonants = ['thr', 'squ', 'sch']
    punctuation = [",", ":", ";", "."]
    capital_letters = ['A', 'B', 'P', 'J', 'Q', 'T']
    
    if three_consonants.include?(word[0]+word[1]+word[2])
        first_3 = word.slice!(0,3)
        new_word = word + first_3 + "ay"
        
    elsif two_consonants.include?(word[0]+word[1])
        first_2 = word.slice!(0,2)
        new_word = word + first_2 + "ay"
    
    elsif vowels.include?(word[0])
        new_word =  word + "ay"
    
    elsif consonants.include?(word[0])
        first_let = word.slice!(0)
        new_word = word + first_let + "ay"
    end
    punctuation.each do |mark|
        if new_word.include?(mark)
            new_word.delete!(mark)
            new_word << mark
        end
    end
    new_word
end