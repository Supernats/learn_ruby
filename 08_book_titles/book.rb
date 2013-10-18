class Book
attr_accessor :title
	
	NO_CAPS = ["and", "of", "in", "the", "a", "an"]

	def title
		words = @title.split
		words.each_with_index do |word, idx|
		if (not NO_CAPS.include?(word)) || idx == 0
			word.capitalize!
		else
			next
		end
	end
		words.join(" ")
	end

end