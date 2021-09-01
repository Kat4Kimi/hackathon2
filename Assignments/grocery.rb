# Create a default array of hashes that represent items at a grocery store.
@products = [
	{ item: 'Pasta', price: 2.70 },
	{ item: 'Toothbrush', price: 4.50 },
	{ item: 'Kitty Litter', price: 8.10 },
	{ item: 'Shampoo', price: 5.00 },
	{ item: 'Kale', price: 3.99 },
	{ item: 'Broccoli', price: 1.26 },
	{ item: 'Dog Food', price: 5.90 }
]
@cart = []

@total = []

# Display a main menu in console for the user to interact with.
def main_menu
	puts "Welcome, what would you like to do today?"
	puts "1) Add Items to Cart"
	puts "2) View Items in Cart"
	puts "3) Remove Items from Cart"
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
		# puts "Please choose from the options above, try again."
	main_menu
	end
end

# Add new items to the grocery store.
def add_items
	# Create a menu option to add items to a user's grocery cart.
	puts "Ok, #{@user_name} what would you like to add to your cart?"
	@products.each_with_index do |products, index|
		puts "#{index + 1}) #{products[:item]} - $#{products[:price]}"
	end
	item_choice = gets.strip.to_i - 1

	puts "You chose #{@products[item_choice][:item]}. #{@products[item_choice][:price]} has been added to your cart."
	@cart << @products[item_choice][:item]
	@total << @products[item_choice][:price]
	main_menu

end

def view_items
	# Create a menu option to display all items to a user's grocery cart.
	if @cart.length === 0
		puts "You don't have anything in your cart!"
		main_menu
	else
		@cart.each_with_index do |item, index|
			puts "#{index + 1}) #{item}"
		end
	end
	main_menu
end

def remove_item
	# Create a menu option to remove items to a user's grocery cart.
	puts "What item would you like to remove from your cart?"
	if @cart.length === 0
		puts "You don't have anything in your cart!"
		main_menu
	else
		@cart.each_with_index do |item, index|
			puts "#{index + 1}) #{item}"
		end
		user_choice = gets.strip.to_i - 1
		@cart.delete_at(user_choice)
		@total.delete_at(user_choice)
		puts "Ok #{@cart[user_choice]} was removed from your cart. The total of $ #{@total[user_choice]} was removed."
	end
	main_menu
end

def show_total
	# Create a menu option to add show total cost of the user's grocery cart.
	if @total.length === 0
	puts "You don't have added cost to your total."
	else
		puts "Here is your total: $#{@total.sum}."
	end
	main_menu
end


main_menu
