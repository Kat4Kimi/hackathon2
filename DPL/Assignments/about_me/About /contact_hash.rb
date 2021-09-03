@contacts = [

{ first_name: "Samurai", last_name: "Champloo", phone: "801-555-1212" },
{ first_name: "Axel", last_name: "Rose", phone: "801-555-1212" },
{ first_name: "Jim", last_name: "Morrison", phone: "801-555-1212" }, 
{ first_name: "Jack", last_name: "Sprat", phone: "801-888-1212"}
]

def main_menu
	puts "- - Contact List - -"
	puts "1) View Contacts"
	puts "2) Add Contact"
	puts "3) Edit Contact"
	puts "4) Delete Contact"
	puts "5) Exit"
	print ">"
	case gets.strip
		when "1"
			view_contacts
			main_menu
		when "2"
			add_contact
			main_menu
		when "3"
			edit_contact
			main_menu
		when "4"
			delete_contact
			main_menu
		when "5"
			puts "Thank you for using the Contact List!"
			exit
		else
			puts "Invalid Entry!"
			main_menu
	end
end

def view_contacts
	puts "Your Contacts: "
	puts 
	@contacts.each_with_index do |contact, i|
		print "#{i + 1}:" 
		print "#{contact[:first_name]} #{contact[:last_name]}"
		puts
		puts "Phone Number: #{contact[:phone]}"
	end
end
def add_contact
	contact = {}

	puts "What is the contacts first name?"
	print "> "
	contact[:first_name] = gets.strip
	
	puts "What is the contacts last name?"
	print "> "
	contact[:last_name] = gets.strip

	puts "What is the contacts phone number?"
	print "> "
	contact[:phone] = gets.strip

	@contacts << contact
	puts "Contact #{contact[:first_name]} #{contact[:last_name]} - #{contact[:phone]} added!"
	main_menu
end

def edit_contact
	view_contacts
	puts
	puts "Which contact would you like to edit?"
	print "> "
	contact = @contacts[gets.to_i - 1]

	puts "Edit Contact: #{contact[:first_name]} #{contact[:last_name]} - #{contact[:phone]}"
	puts
	print "What would you like to update the first name to? (Hit enter to keep original name)"
	print"> "
input = gets.strip
input == "" ? nil : contact[:first_name] = input # This is a ternary (tells it if nothing is entered go to next ":" = else)
	print "What would you like to update the last name to? (Hit enter to keep original name)"
	print"> "
input = gets.strip
input == "" ? nil : contact[:last_name] = input # This is a ternary (tells it if nothing is entered go to next ":" = else)
	print "What would you like to update the phone number to? (Hit enter to keep original number)"
	print"> "
input = gets.strip
input == "" ? nil : contact[:phone] = input # This is a ternary (tells it if nothing is entered go to next ":" = else)
main_menu
end

def delete_contact
	view_contacts
	puts
	puts "Which contact would you like to delete?"
	print"> "
	index = gets.to_i - 1
	contact = @contacts[index]
	puts "Are you sure you want to delete #{contact[:first_name]} #{contact[:last_name]} - #{contact[:phone]}"
	puts "y/n"
	print "> "
	gets.strip == "y" ? nil: main_menu #Question mark is your "if" Colon is your "else"
	@contacts.delete_at(index) 
	puts "#{contact[:first_name]} #{contact[:last_name]} has been deleted."
	main_menu
end

main_menu

#ScottChristensen was the name of the instructor