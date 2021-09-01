# Conditionals

# num = 8

# if num > 0 
# 	puts "positive"
# elsif num % 2 == 0
# 	puts "even"
# end


# def is_div_by_5(number)
# 	if number % 5  == 0
# 		return true
# 	else return false
# 	end

# end

# def is_div_by_5(number)
# 	return number % 5 == 0
# end


def either_only(number)
	if  (number % 3 == 0 || number % 5 == 0) && !(number % 3 == 0 && number % 5 == 0)
return true 
	else return false
	end
end


puts is_div_by_5(9) #T
puts is_div_by_5(20) #T
puts is_div_by_5(7) #F
puts is_div_by_5(15) #F
puts is_div_by_5(30)  #False