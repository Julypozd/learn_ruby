class Book
attr_accessor :title
	def initialize 
		@title = title
	end
	
	def title=(title)
	    title = title.capitalize
	    small_words = ['a', 'an', 'and', 'if', 'or', 'in', 'the', 'of']
		words = title.split(" ")
		answer = []
	    words.each do |word|
	        if small_words.include?(word)
            answer << word.downcase
            else
            answer << word.capitalize
            end
        end
    return @title = answer.join(" ")
    end
end

book = Book.new
book.title = "the Man in the Iron Mask"
puts book.title