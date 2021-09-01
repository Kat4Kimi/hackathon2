class Person
	attr_accessor :name, :age

	def initialize(name, age)
		@name = name
		@age = age
	end
	def increase_age(num)
		age += num
	end

end

jake = Person.new ("jake", 45)
# puts jake.name
# puts jake.age
# puts jake.increase_age(1)

jill = Person.new("Jill", 32)
# puts jill.name
# puts jill.age
# puts jill.increase_age(1)