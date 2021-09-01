class Parent
	def from_parent
		puts "this is from the parent"
	end
end


class Child < Parent


end


p = Parent.new
c = Child.new

p.from_parent
c.from_parent

OVERRIDING THE PUTS MESSAGE (if you want to override from this is form the parent to this is from the child)

	class Parent
		def from_parent
			puts "this is from the child" ---- This is overriding 
		end
	end
	
	
	class Child < Parent
		def from_parent
			puts "this is from the parent"
	
	end
	
	
	p = Parent.new
	c = Child.new
	
	p.from_parent
	c.from_parent

	ALTERING A Method
	class Parent
		def from_parent
			puts "this is from the parent"
		end
	end
	
	
	class Child < Parent
		def from_parent
			puts "this is from the parent"
			super ( )
	
	end
	
	
	p = Parent.new
	c = Child.new
	
	p.from_parent
	c.from_parent