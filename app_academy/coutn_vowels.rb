def count_vowels
	count = 0

	i = 0
	while i < word.length
		
		i += 1
		char = word[i]
if char == "a" || char == "e"  || char == "i" || char == "o" || char == "u"
	count += 1
end

i += 1
end


return count
end

puts count_vowels(bootcamp)


