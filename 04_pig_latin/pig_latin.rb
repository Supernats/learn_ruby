VOWELS = ["a", "e", "i", "o", "u"]


def translate(message)
	arr = message.split
	out = ""
	arr.each_with_index do |word, idx|
		out += "#{translate_word(word)}"
		out += " " unless idx == arr.count - 1
	end
	out
end


def translate_word(word)
	arr = word.split("")
	swap = ""
	arr.each_with_index do |letter, idx|
		if letter == "u" && arr[idx - 1] == "q"
			swap += letter
		end
		if letter.match(/[AEIOU]/i)
			break
		else
			swap += letter
		end
	end
	swap.length.times { arr.shift }
	word = arr.join + "#{swap}ay"
end

#def capitalize(word)
