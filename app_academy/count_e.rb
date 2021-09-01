# def count_e(word)
# 	i = 0
# 	while i < word.length

		# Write a method, count_e(word), that takes in a string 'word' and returns
		# the number of e's in teh word.

		def count_e(word)
			count = 0 # use count to track the number of e's


			i = 0 # use I to iterate thru word
			while i < word.length
				char = word[i]
				
				if char == "e"
				count += 1
		end
		i += 1 
	end

	return count
end

		count_e("excellent")