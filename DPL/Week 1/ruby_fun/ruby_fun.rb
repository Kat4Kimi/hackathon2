# # # Comments

# # # Datatype
# # String
# # 'Ford'
# # "Ford"
# # # '" error
# # "0 false nil"

# # Integer
# # 0
# # 12312313
# # -1231232

# # Float
# # # Anything with a decimal either positive/negative
# # 0.0
# # 0.123123123
# # -123123.123123
# # Math.PI

# # Math.E
# # Boolean
# # true
# # false
# # 1 - true
# # 0 - false

# # Array
# # # Uses the box brackets. Used for a set of items
# # ["strings', "strings2]
# # [1, "string"]

# # Hashes
# # {key: value} - key value pairs
# # {make: "ford", year:1999}


# # nil
# # # Has no value

# # Undefined - has not been made or referenced before

# # Objects - Noun, 
# # # Something from the real world that we are placing into here. Hashes become objects as well.

# # Input and outputs
# # puts "hi"
# # print"hi
# # # p "hi"
# # puts name

# # puts "What is your name?"
# # name = gets
# # puts "what is your age?"
# # age = gets.to_i #will convert it to integer
# # .to_f
# # .to_b
# # puts age + 1

# + - / * ()
# % - Modulus, returns the remainder amount 
# # puts 3 % 4
# 12 % 2 == 0 - means it is even
# Math.PI
# String concatenation
# puts "hello " + "world" + "!"

# String interpolation (Must be in double quotes)
# planet = "mars"
# age = 12
# puts "Hello #{planet}!"
# puts "Hello #{age}!"

# <
# >
# <=
# >=

# = - Assignment
# == - Equality, of value
# # === - Equality, of value and type
# != - Not equality
# !== - Not equal in value and data type
# Logical Operators
# && - and, both sides to be true to all be true
# || - or, one side needs to be true

# http://ruby-doc.org
# using google with specific questions will help you better.

# NOW WE WILL TALK ABOUT VARIABLES & SCOPE

# Variables
# - Helps you store values for you to reference later
# define in a scope
  # - where you have access to var

# When you are naming your stuff use a desriptive name
  # can't start with a number
  # but can have number within it
  # can start or end with an underscore, but other symbols will give you an error
  # don't use key word for var name
  # look up words that are reserved words so you stay away from naming things that will kick back an error because they're already reserved terminology within Ruby
# name = "bob"
# puts name 
# x
# o
# So when I type name it will ref bob

# Foo - Constant
#   -should not change the value
# - capital first letter
# - scoped within the whole file

# foo - Local
#   - lowercase 1st letter,
#   first_name
#   - scope within a code block
#   def print_name
#       name = "bob"
#       puts name 
# #   end

## @foo - instance
#   - @
#   - scoped to class, or a running instance 

## @@foo - class Variables
#   - @@
#   - scoped within the class, file
#   class Person
#     @age 
#     @@name
#   end

# $foo - do not use, global
#     - $
#     - scope machine wide

# Foo = 1
# @foo = 3

# def print_foo
#   puts Foo
#   foo = 2
#   puts foo
#   puts @foo
# end

# print_foo

#THIS IS WHERE HE SAID, "IF YOU'RE NOT CONFUSED YOU WILL BE DURING THIS SECTION!"

# #M methods, function
#   - break up your program into small manageable parts
#   - perform a single task
#   - descriptive, and not a reserved word
#   - last line is always returns- set once and not always

# def hello _world
  # puts "hello"
# end

# hello_world
# - use arg (arguement), param (parameter) things passed in for the 
# method to use.

# def hello_planet(planet, sym)
#   puts " hello #{planet} #{sym}"
# end

# hello_planet ("venus", ">")
# hello_planet ("mars", "!")

# def triple(num)
#     num * 3
# end

# def odd_or_even(num)
#     if num % 2 == )
#       'even'
#     else
#       'odd'
#     end
#   end

  # puts odd_or_even(triple(4))
  # .to_i - will convert code to integer
  # .downcase
  # # .split(" ")
  # 3.downcase.split(" ")

# conditionals - lets you run logic based on a certain condition
# - true or false
# - taunticalogical - always eval to true
# - always eval to true
# - always eval to false

  # EXAMPLE of Conditional
  # if num >= 0
  
  # end

  # if num <= 0
  #   puts " is less than 0"
  # elsif num >=3
  #     puts " greater than 3"
  # else
  #   puts " is not less than 0"
  # end

#   if num <= 0
#     puts ” is less than 0"
#   elsif num  >= 3
#     puts ” greater than 3"
#   else
#     puts ” is not less than 0"
#   end
#   case num
#   when 1
#     puts  ” is one”
#   when 2
#     puts ” is two”
#   else
#     puts ” no tthe right number ”
#   end
#   if num % 2 == 0
#     a = true
#   else
#     a = false
#   end
#   # ternary
#   # assignment = conditon ? if : else
#   a = num % 2  == 0 ? true : false

# loops, anything you want to have
# happen over and over again
# iterators, go through a set of values like array and hashes
# do not create infinite loops, a loop that runs 4ever
# ctrl + c - exit out of the program and loop
# while true
# puts "hi"
# end 
# base case - starting point
# induction step - progress through the loop
# end the loop
# num = 0
# while num == 5
  puts numnum++
# end


# ++
# --
# +=
# -=
# *=


# x = 0
# until x > 3 
#   puts x
#   x += 1
# end
# range
# for x in (0..5)
#   puts x
# end


# iterator

# (0..5).each do |x|
#   puts x
# end
# (0..5).each { |x| puts x }
# arr = [1,2,3,4,5]
# new_arr = arr.map { |num| num.to_s }

# arr = [1,2,3,4,5]

# new_arr = arr.select { |num| num % 2 == 0 }

# puts new_arr


# arr = [1,2,3,4,5]

# new_arr = arr.reject { |num| num % 2 == 0 }

# arr = [1,2,3,4,5]

# val = arr.reduce(&:+)

# x = 0
# y = 0
# (1..5).each do |i|
#   puts 'in x loop'
#   x += i
#   (1..2).each do |j|
#    y += j
#   end
# end

# puts `man ls`