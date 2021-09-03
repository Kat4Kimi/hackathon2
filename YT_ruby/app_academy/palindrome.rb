def is_palindrome(word)
	reversed = ""

	i = 0
	while i <word.length
		reversed + word[i] + reversed

		i += 1
	end

	if word ==reversed
		return true
	else
		return false
	end
end


puts is_palindrome("racecar")
puts is_palindrome("kayak")
puts is_palindrome("bootcamp")
