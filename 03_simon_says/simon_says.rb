#write your code here
def echo(word)
    word
end
puts echo("hello")
def shout(word)
    word.upcase
end
puts echo("hello")

def repeat(word, times=nil)
    if times == nil
        ((word +" ") * 2).delete_suffix(" ")
    else
        ((word +" ") * times).delete_suffix(" ")
    end
end
puts repeat("hello")
puts repeat("hello", 3)

def start_of_word(word, num)
    return word[0, num]
end 
puts start_of_word("hello", 1)
puts start_of_word("Bob", 2)

def first_word(sen)
    sen.split.first
end
puts first_word("hello word")

def titleize(sen)
    sen = sen.capitalize
    small_words = ['and', 'the', 'over', 'a', 'an']
    answer = []
    words = sen.split(" ")
    words.each do |word|
        if small_words.include?(word)
            answer << word.downcase
        else
            answer << word.capitalize
        end
    end
    return answer.join(" ")
end
# cap_all= words.map {|string| string.capitalize} 