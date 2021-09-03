# you can call methods from anywhere inside a program. Anytime you def you end it immediately.

def sayhi(name, age) #a value that whoever is calling this method can use
	puts ("hello " + name + ", you are " + age.to_s)
end

sayhi("Mike", 73)


