# Create a Menu
# 1) Add Item 
# 2) Display All
# 3) Remove
# Display a menu in the console for the user to interact with.
# Create a default array of hashes that represent items at a grocery store.
# OPTION 1) Create a menu option to add items to a user's grocery cart.
	# create a method that 
		# 1. create an empty list
		# 2. references @grocery_store and adds to my lislt
# OPTION 2) Create a menu option to display all the items in the cart.
# OPTION 3) Create a menu option to remove an item from the users cart.
# OPTION 4) Create a menu option to show the total cost of all the items in the user's cart.
# OPTION 5) Add new items to the grocery store.
# Zip it up and turn it in!

@grocery_store = [
	{ item: 'pasta', price: 2.7 },
	{ item: 'toothbrush', price: 4.5 },
	{ item: 'kitty litter', price: 8.1 },
	{ item: 'shampoo', price: 5 },
	{ item: 'kale', price: 3.99 },
	{ item: 'broccoli', price: 1.26 },
	{ item: 'dog food', price: 5.9 }
]
def menu
	puts "1. Add item to grocery cart"
	puts "2. Display all items in cart"
	puts "3. Remove item in grocery cart"
	puts "4. Total cost of items in cart"
  puts "5. Add new items to the grocery store"
	user_input = gets.strip.to_s
	if user_input == 1
		puts "option 1"
		my_cart(@grocery_store)

	elsif user_input == 2
		puts "option 2"

	elsif user_input == 3
		puts "option 3"

	elsif user_input == 4
		puts "option 4"

	elsif user_input == 5
		puts "option 5"

		add_items(@grocery_store)
	else
		puts "bruh wrong number..."
		menu
	end
end

def my_cart
	my_cart = []
	# puts @grocery_store
	user_input = gets.strip.to_s
	@grocery_store.each do |grocery_item|
		if user_input == grocery_item[:item]
		# puts "item: #{grocery_item[:item]}, price: #{grocery_item[:price]}"
			my_cart << user_input
	my_cart
		end
	end
	# puts "that is not at our store"
	puts "my_cart: #{my_cart}"
	my_cart

		# grocery_store = gets.strip.to_s 
	# my_list << grocery_store
	# puts "my_list: #{my_list}"

end


my_cart


def set_cart
	@cart = Cart.find(session[:cart_id])
	rescue ActiveRecord::RecordNotFound
	@cart = Cart.create
	session[:cart_id] = @cart.id 
end
end

class Cart &lt; ApplicationRecord
has_many :cart_items
def add_product ()