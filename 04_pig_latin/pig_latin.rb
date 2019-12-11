#write your code here
def translate(string)
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'x', 'z', 'w', 'y']
    two_consonants = ['th', 'qu', 'bl', 'cl', 'fl', 'gl', 'pl', 'sl', 'br', 'cr', 'dr', 'fr', 'gr', 'pr', 'tr', 'sc', 'sk', 'sm', 'sn', 'sp', 'st', 'sw', 'tw', 'ch']
    three_consonants = ['thr', 'squ', 'sch']
    words = string.split(' ')
    result = []
    
    words.each do |word|
        if three_consonants.include?(word[0]+word[1]+word[2])
            first_3 = word.slice!(0,3)
            result << word + first_3 + "ay"
            
        elsif two_consonants.include?(word[0]+word[1])
            first_2 = word.slice!(0,2)
            result << word + first_2 + "ay"
        
        elsif vowels.include?(word[0])
            result <<  word + "ay"
        
        elsif consonants.include?(word[0])
            first_let = word.slice!(0)
            result << word + first_let + "ay"
        end
    end
return result.join(" ")
end
# puts translate("Apple")
# puts translate("banana")
# puts translate("cherry")
# puts translate("three")
puts translate("eat pie")
puts translate("square")
puts translate("quiet")
puts translate("school")
puts translate("the quick, brown fox")