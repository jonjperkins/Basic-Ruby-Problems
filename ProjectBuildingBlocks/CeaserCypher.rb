def ceaser_cypher(word, num)
	lower = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
	upper = lower.join.upcase.split('')
	encrypted = ''
	word.each_char do |x|
		if lower.include? x
			index = lower.index(x)
			lower.rotate!(num)
			encrypted << lower[index] 
		elsif
			index2 = upper.index(x)
			upper.rotate!(num)
			encrypted << upper[index2]
		else
			encrypted << x
		end
	end
	print encrypted
end

ceaser_cypher('What a string!', 5)