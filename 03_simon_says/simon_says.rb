def echo(message)
	message
end

def shout(message)
	message.upcase
end

def repeat(message, count = 2)
	out = ""
	i = 0
	while i < count - 1
		out += "#{message} "
		i += 1
	end
	out += message
	out
end

def start_of_word(message, count = 1)
	message[0...(count)]
end

def first_word(message)
	words = message.split
	words[0]
end

LITTLE_WORDS = ["and", "the", "over"]

def titleize(message)
	words = message.split
	words.each_with_index do |word, idx|
		# Following code kinda sucks, come back later and:
		# Add a database of "little words."" Refactor to do a check against it
		# to DRY up the code and allow for more exception words.
		if LITTLE_WORDS.include?(word)
			next unless idx == 0
		end
		word.capitalize!
	end
	words.join(" ")
end