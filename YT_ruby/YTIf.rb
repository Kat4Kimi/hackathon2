# I wake up 
# if I'm hungry
# 	I eat breakfast

# I leave my house
# 	if it's cloudy
# 		I bring an umbrella
# 	otherwise
# 		I bring sunglasses

# I'm at a resturant 
# 	if I want meat
# 		I order a steak
# 	otherwise if I want pasta 
# 		I order spaghetti & meatballs
# 	otherwise
# 		I order a salad

# -- IF STATEMENTS --


# ismale = false
# istall = true

# if ismale and istall
# 	puts "You are a tall male"
# elsif ismale and !istall
# 	puts "You are a short male"
# elsif !ismale and istall
# 	puts "You are not male, but are tall"
# else
# 	puts "You are not male and not tall."

# end

# num1 >= num2 : this is a boolean value

# -- IF STATEMENTS & CONDITIONS --

def max(num1, num2, num3)
	if num1 >= num2 and num1 >= num3
		return num1
	elsif num2 >= num1 and num2 >= num3
		return num2
	else	
	return num3
	end
end
puts max(100, 20, 3)

# The result of the comparisions above is ture and false Also, >=, ==, !=, are all booleans.