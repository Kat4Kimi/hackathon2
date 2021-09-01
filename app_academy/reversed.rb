def reverse(word)
		reversed_str = ""

		i = 0
	while i < word.length
			char = word[i]
			reversed_str = char + reversed_str

			i += 1
	end


	return reversed_str
end

puts reverse("cat")
puts reverse("programming")
puts reverse("bootcamp")

