# The initilize method will always trigger when you type the .new

class Dog
	attr_accessor :name, :color, :age #name, color, age, are attributes

	def intitialize(name, color, age)
		#set up variable here
		@name = name
		@color = color
		@age = age
	end
	# Instance Method:
	def info
		puts "#{@name} is the color of: #{@color}, is the age of: #{@age}"
	end

	# Class Method: GOOGLE THIS FOR BETTER UNDERSTANDING!!
	def self.bark 
		puts "woof"
end

Dog.new #this will trigger the initialize function first
Dog.new("clifford", "red", 12)
