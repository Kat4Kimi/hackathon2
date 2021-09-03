# puts "Enter your name"
# name = gets
# puts ("Hello " + name)
# !! .chomp takes new line away !! Every time the user hits Enter it makes a new line.

puts "Enter your name "
name = gets.chomp()
puts "Enter your age "
age = gets.chomp()
puts ("Hello " + name + " you are " + age)
