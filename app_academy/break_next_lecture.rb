# break - immediately exit the loop
# next - skips to the next iteration

i = 1
while i <= 10
	puts i
	if i == 5
		i += 1
		next
	end
	puts i 
	i += 1
end

	puts "loop end"

	