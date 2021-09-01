# # # Datatype
# # # String "" ''
# # # Boolean true false
# # # Float 1.212
# # # inteer 123232
# # # nil
# # # undefined
# # # NAN - not a number
# # # dates
# # # Array []
# # # Hash { key: values }

# # # Objects - noun, ruby Obj

# # # Outputs (prints it out)
# # # puts
# # # print
# # # p

# # # input
# # # gets

# # # variable - container for info, nickname for  items we 
# # # store values and ref later for use
# # # first_name
# # # scope - field of vision within blocks, where you have access to the variable. 

# # SCOPES
# # Foo - constant, scoped within a field
# # foo - local, scope within a coding block
# # @foo - instance scoped to the class, file, or runnining instance
# # @@foo - class, class scoped$foo - don't use, global, machine code

# # STRING CONTAMINATION - Combining smaller strings into bigger strings
# # "string" + " world" + "!"

# # STRING INTERPOLATION
# # name = "jill"
# # "YOU HAVE TO HAVE DOUBLE QUOTES IN STRING INTERPOLATION"
# # "Hello #{name}"

# # METHOD - Breaks up your code in small manageable parts. Like the verb, it completes actions
# # keyword to start method is def
# # def print_hello
# # 	puts "hello"
# # end

# # print_hello (this is how you tell ruby to run the hello)

# # def print_person(p)
# # 	puts"hello #{p}
# # end

# # print_hello("jill")
# # prin_hello("bob")

# # puts str.downcase.split().last
# # .to_i
# # .to_f
# # .to_s
# # .chomp
# # .strip
# # gets.to_i.strip (this will take integer and remove any spacing)

# # ex1 = gets 
# # ex2 = gets.to_i
# # ex3 = gets.strip.to_i

# # CONDITIONALS - runs logic/code when condition is method
# # if elsif else
# # case
# # ternary
# # unless

# # # LOOPS - INTERATE THROUGH A SET OF OBJECTS, WILL CONTINUE UNTIL CONDITION IS METHOD
# # # infinite loop - a loop that runs forever, CTRL + C will get out of the infinite loop
# # # base case - start point
# # # induction step - a way to get out of the loop
# # # while until, for, for in, for each
# # # 		for in map, select, reject reduce

# # # `` - this allows you to run shell commands

# # # RECURSION - CALLING A METHOD WITHIN ITSELF
# # def menu
# # 	puts "Welcome to the main menu"
# # 	puts "1. go to Wallet"
# # 	puts "2. go to profile"
# # 	puts "3. Exit"
# # 	user_input = gets.strip.to_i
# # 	if user_input == 1 
# # 		puts " you are in your wallet"
# # 	elsif user_input ==2
# # 		puts "you are in your profile"
# # 	elsif user_input == 3
# # 		puts "Bye"
# # 		exit
# # 	# elsif user_input !== 1&& user_input !== 2 && user_input !== 3
# # 		puts "Sorry that is not correct, try 1, 2, or 3"
# # 		menu
# # 	end
# # end

# # - PROFESSORS CODE FROM SLACK -
# # def menu 
# #   puts "Welome to the main menu"
# #   puts "1. go to Wallet"
# #   puts "2. go to profile"
# #   puts "3. Exit"
# #   user_input = gets.strip.to_i
# #   if user_input == 1
# #     puts " you are in your wallet"
# #   elsif user_input == 2
# #     puts "you are in your profile"
# #   elsif user_input == 3
# #     puts "Bye"
# #     exit
# #   # elsif user_input != 1 && user_input != 2 && user_input != 3
# #   else
# #     puts "sorry that is not correct, try 1, 2, or 3"
# #     menu
# #   end
# # end

# # menu

# # ARRAYS - COLLECTION OF DATA, POSITIONED IN CERTAIN WAY, WHATEVER DATA TYPE created with[]
# # Array.new()
# # Array.new(5)
# # arr = []
# # index - POSITION
	
# # arr = [] <--empty array
# # arr = ["jill", "bob", "jack"] <--namesArr (namesArr)
# # # arr = [1, "hello", nil, {}, []] <--randArr (random array)

# # puts namesArr[0]
# # puts namesArr[1]
# # puts namesArr.first
# # puts namesArr.last

# # namesArr = ["jill", "bob", "jack"]
# # # iterator - go through all items within an arr
# # namesArr.each_with_index do |name, index|
# # 	puts "#{index + 1}. #{index}"
# # end
# # MINE DID 0, 1, 2

# # PROFESSORS NOTES


# # namesArr = ["jill", "bob", "jack"]
# # namesArr = ["jill", "bob", "jack", "june"]
# # namesArr = ["jill"]
# # iterator - go through all items within a arr
# # namesArr.each do |name|
# #   puts name
# # end

# # namesArr.each_with_index do |name, index|
# #   puts "#{index + 1}. #{name}"
# # end

# letter = ['A', 'B', 'C']
# # adds items into arr
# # letter << 'D'
# # adds letter to the end

# letter.unshift ("Z")
# #add to the front

# letter.insert(1, 'W')
# # add it to the index value provided

# remove
# letters.pop
# remove fromt he end

#letters.shift
# remove 
# remove from the front

# letter.delete_at(1)
# delete from the index

# p letters 
# p letters.rotate
# p letters.reverse
# p letters.sort
# p letters.clear

# HASHES - REALLY GOOD FOR REPRESENTING OBJECTS
# KEY VALUE PAIRS, REP OBJECT
# REF BY KEY TO GET VALUE

# Hash.new
#{}

# OLD WAY 
# hash1 = { 1 => 'adf', 2 => 'b'}
# p hash1[1]
# hash2 = { 'first_name': 'bob', 'last_name': 'jones'}
# p hash2['first_name']

# # - NEW WAY -
# { first_name: 'bob', last_name: 'jones' age: 34}
# p person[:first_name]
# p person[:hair_color] = "blue"
# # key, they have to be word and or combine with numbers.
# # value can be what every datatype
# - HOW TO DELETE -
# person.delete(:age)
# p person

person = {
	first_name: 'Bob',
	last_name: "Jones",
	age: 34,
}

- PROFESSORS EXAMPLES -

# namesArr = ["jill", "bob", "jack"]
# namesArr = ["jill", "bob", "jack", "june"]
# namesArr = ["jill"]
# iterator - go through all items within a arr
# namesArr.each do |name|
#   puts name
# end

# namesArr.each_with_index do |name, index|
#   puts "#{index + 1}. #{name}"
# end

# letters = ['A', 'B', 'C']
# add items into arr 
# letters << 'D'
# add to the end

# letters.unshift("Z")
# add to the front

# letters.insert(1, 'W')
# add it to the index value provided

# remove 
# letters.pop
# remove from the end

# letters.shift
# remove from the front

# letters.delete_at(1)
# delete from the index
# p letters

# p letters.rotate
# p letters.reverse
# p letters.sort
# p letters.clear

# Hashes
# key value pairs, rep obj 
# ref by key to get the value

# Hash.new 
# {}

#old 
# hash1 = { 1 => 'adf', 2 => 'b'}
# p hash1[1]
# hash2 = { 'first_name': 'bob', 'last_name': 'jones'}
# p hash2[:first_name]

# new 
# person = { first_name: 'bob', last_name: "jones", age: 34}
# puts "First name: #{person[:first_name]}"
# p person[:last_name]
# p person[:age]
# p person[:hair_color]
# p person
# key, they have to be word and or combine with numbers _
# value can be what every datatype
# person[:hair_color] = "blue"
# p person

# person.delete(:age)
# p person

# person = { 
#   first_name: 'bob', 
#   last_name: "jones", 
#   age: 34,
#   beard: true, 
#   qoutes: ['asdfasdf', 'adsfasdf']
# }

# people = [
#   { first_name: 'Dave', last_name: 'Jungst' },
#   { first_name: 'Bat', last_name: 'man', age: 30 },
#   { first_name: 'Jake', last_name: 'Sorce'}
#  ]

# p people[0][:first_name]
# p people[1][:age]

# languages = { 
#   language: {
#    ruby: { 
#      conceived: 1993,
#      awesomeness: 9000
#    },
#    java: {
#      conceived: 1991,
#      awesomeness: false
#    }
#   }
# }

# p languages[:language][:ruby][:awesomeness]

# person = { first_name: 'bob', last_name: "jones", age: 34 }

# p person.keys
# p person.values
# p person.clear
# person.each do |key, value|
#   puts "#{key}: #{value}"
# end


# - RUBY GEMS -
# Packages or tools that someone has made for us to use in a program
# (Check out Rubygems.org) It's easier to google the specific gem instead of going through all of them on website.
# Click on SourceCode Option wihtin the RUBYGEMS website

# BUNDLE INIT - This will create a gemfile for you to add GEMS
# 1st Step - bundle init - create a gemfile add gems
# 2nd step - add gems within gemfile
# # 3rd Step - bundle or bundle install 
# always would rerun when there is a change in gemfile
# 4th Step - read the docs and do what id needed for use
# 		# require 'packagename' very top of file











# Build a contact list
# Create a menu that allows a user to select 
# 1) Create a contact 2) View All Contacts 3) Exit
# grab the users information 
# store into a variable to use later
# use a conditional 
# store contacts somewhere array
# contact a hash { first_name: "mom", last_name: "", nickname: "", phone: "", email: ""}
# 1) Create a contact 
# grab the first name of the contact
# grab the last name of the contact
# grab the nick name of the contact
# grab the phone of the contact
# grab the mail of the contact
# inputs outs puts
# put the values in the right keys in the new contact hash
# add the contact hash into the contacts array
# 2) View All Contacts 
# 3) Exit
# The menu should loop until the user exits
# sudo coding, commenting out the process and break up the problem
