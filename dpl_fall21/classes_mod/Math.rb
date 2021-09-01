module Math

	def square(num)
		number * num * num * num
	end
	
	def add(num1, num2)
		num1 + num2
	end



end
# require_relative

# THIS IS HOW YOU WOULD CREATE DRY CODE

class MathHW1
	include Math

	def first_answer
	puts square(add(1, 3))
	end
end
INSTRUCTORS NOTES
module Math 
  def square(num)
    num * num * num * num 
  end

  def add(num1, num2) 
    num1 + num2
  end
end
# require_relative 
class MathHW1
  include Math
  
  def first_answer 
    puts square(add(1, 3))
  end
end

h1 = MathHW1.new
h1.first_answer