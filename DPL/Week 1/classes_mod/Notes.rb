
- - VOCABULARY - -

- Datatypes -
string "" ''
integer 21123
float 1.23232
boolean true false
hash { key: values }
Array [ ]
nil 
undefined
NAN, not a number 

- Conditional - logic that is run when a condition is met 
if else elsif 
switch
ternary 
unless

- Loops - run logic, until a condition is met or however many times 
while 
for 
each 

- Iterators - iterate or go through each object in a set.
for each do 
each with index
.map

- Methods - break down in smaller task to return some value or logic, like the verb.
def print_hello

end

def print_planet(p1, p2)

end

# Ruby Gems - tools that you can download into your program.
colorize 
pry

Objects - Noun, person, place, or thing, data, 
- Hashes 
  { first_name: "luke" , age: 4 }
- class 





- COUNTER EXAMPLE -

@expenses = [
  { title: "Buy Clothes", category: "Shopping", amt: 40.00 }, 
  { title: "Tacos", category: "Food", amt: 20.00 }, 
  { title: "Movies", category: "Fun", amt: 18.32 }
]

# puts 40.00 + 20.00 + 18.32
# puts 40.00 + 20 + 18.32
# each index, only grab the amt

def calc_total
  # add up some of the values 
  # store that into a variable 
  @total = 0.0
  @expenses.each_with_index do |expense, index|
    # p expense
    # p index
    # p expense[:amt]
    # if index >= 0 && index <= 2
    @total = @total + expense[:amt]
    #@total += expense[:amt]
  end
  p @total
  p "$#{@total}"
end
calc_total


- SLIDE SHOW -

# Classes - coding blueprint of objects 
class Person ( CAPITALIZE FIRST LETTER OF CLASS)


end
  - usually in their own file 

# Modules - grouping together code that we are using over and over again 

module Math (AGAIN CAPITALIZE FIRST LETTER)

end


# C.R.U.D (facebook lets you create, read, and update posts)
  - action that we are able to do in app, base 
  Create 
  Read 
  Update 
  Destroy

#   D.R.Y 
  # Don't Repeat Yourself

#   W.E.T
  # Written every time 

#   convention - Best practices

# OOP
#   object oriented programing
#     - treat everything as an object
#     - dealing with object 

# BOP
#   Behavior oriented programing

# inheritance 
#   Classes 
#   relationship between objects 
#   parent to child 
#     one direction 
#     everything the parent has the child has access to 

# Encapsulation 
#   bundling all related data in a single place. 

# Polymorphism 
#   objects can take many forms 
#   classes 

# Testing - 
#   code works like its suppose to 

#   TDD
#     Test driven Development
#       write test first and then write code to make your code 
#       pass the test.