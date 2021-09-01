@grocery_items [
	{ item: 'Pasta', price: 2.7 },
	{ item: 'Toothbrush', price: 4.5 },
	{ item: 'Kitty Litter', price: 8.1 },
	{ item: 'Shampoo', price: 5 },
	{ item: 'Kale', price: 3.99 },
	{ item: 'Broccoli', price: 1.26 },
	{ item: 'Dog Food', price: 5.9 }
]

def main_menu
	puts "Welcome to the DPL Grocery!"
	puts "What is your name?"
	@user_name = gets.strip
	puts "Welcome #{@user_name}, what would you like to do today?"
	puts "1) Add Items to Cart"
	puts "2) See Items in Cart"
	puts "3) Remove Items in Cart"
	puts "4) View Total"
	puts "5) Exit"
	user_input = gets.strip.to_i

	case user_input
	when 1 
		add_items
	when 2
		view_items
	when 3
		remove_item
	when 4
		show_total
	when 5
		puts "Thank you for shopping with DPL Grocery!"
		exit!
	else
		puts "Wrong option bruuuh, try again!"
		main_menu
	end
end

def add_items
	puts "Ok #{@user_name}, what item would you like to add to your cart?"
	@grocery_items.each_with_index do |grocery_item, index|
		puts " #{index + 1}) #{grocery_item[:item]} - $#{grocery_item[:price]}""
	end
end

def view_items
	puts "View Items"
end

def remove_item
	puts "Remove Item"
end

def show_total
	puts "Show Total"
end

	
	








main_menu
