dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(phrase, dictionary)

	word_count = {}
	phrase.downcase.split(' ').each do |word|
		dictionary.each do |x|
			if word.include? x
				x
				if word_count[x] == nil
					word_count[x] = 1
				else
					word_count[x] += 1
				end
			end
		end
	end
	puts word_count
end

substring("Howdy partner, sit down! How's it going?", dictionary)