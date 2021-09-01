class Mammal
	attr_accessor :name, :age
	# read and write the name and age of the mammal is 
	attr_reader :name, :age
	# Can read the names
	attr_writer :name, :age
	# Can change and write 

	def initilize(name, age)
		@name = name
		@age = age
end

	def breathe
		puts "Inhale and Exhale"
	end

	def speak
		raise "You need to override this method."
	end
end

class Cat < Mammal
	def initialize(name, age)
		super(name, age)
	end

	def speak # This will cancel out the earlier speak error
		puts "Meow"
	end
end


INSTRUCTORS NOTES
class Mammal 
  # read and write the name and age of the mammal
  attr_accessor :name, :age
  # attr_reader :name, :age
  # attr_writer :name, :age

  def initialize(name, age)
    @name = name 
    @age = age
  end

  def breathe
    puts "Inhale and Exhale"
  end

  def speak
    raise "You need to override this method"
  end
end

class Cat < Mammal
  def initialize(name, age)
    super(name, age)
  end

  def speak 
    puts "Meow"
  end
end 

class Dog < Mammal
  def initialize(name, age)
    super(name, age)
  end

  def speak 
    puts "Woof"
  end
end 

enzo = Cat.new("Enzo", 10)
enzo.speak