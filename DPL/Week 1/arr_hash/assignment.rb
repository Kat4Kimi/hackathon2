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
# grab arr of contact
# iterating through the array
# put out the contact in a readable way
# 3) Exit
# loop, recursion
# The menu should loop until the user exits
# puts goodbye message
# The menu should loop until the user exits
# sudo coding, commenting out the process and break up the problem



# @contacts = [
# 	{ first_name: "Kat", last_name: "Athay", phone: "801-824-6560"},
# 	{ first_name: "Charles", last_name: "Athay", phone: "801-739-3234"},
# 	{ first_name: "Katy", last_name: "Athay", phone: "801-541-0988"},
# 	{ first_name: "Gil", last_name: "Athay", phone: "801-363-7074"},
# # ]

# def main_menu

# 	puts "1) Create New Contact"
# 	puts "2) View All Contacts"
# 	puts "3) Exit"
# 	user_input = gets.strip.to_i
# 	if user_input == 1
# 		puts "Create New Contact"
# 	elsif User_input == 2
# 		puts "View All Contacts"
# 	elsif user_input == 3
# 		puts "Goodbye, thanks for stopping by!"
# 		exit
# 	else
# 	puts "Invalid Input, try 1, 2, or 3"
# main_menu
# 	end
# end

# main_menu

@contacts = [
		{ first_name: "Kat", last_name: "Athay", phone: "801-824-6560"},
		{ first_name: "Charles", last_name: "Athay", phone: "801-739-3234"},
		{ first_name: "Katy", last_name: "Athay", phone: "801-541-0988"},
		{ first_name: "Gil", last_name: "Athay", phone: "801-363-7074"},
	# ]

def main_menu
  puts "1) Create New Contact"
  puts "2) View All Contacts"
  puts "3) Exit"
  user_input = gets.strip.to_i
  if user_input == 1
    puts "Create New Contact"
  elsif user_input == 2
    puts "View All Contacts"
  elsif user_input == 3
    puts "Goodbye, thanks for stopping by!"
    exit
  else
    puts "Invaild Input, try 1, 2, or 3"
    main_menu
  end
  # p user_input
end

def all_contacts
	
# while true
main_menu
# end