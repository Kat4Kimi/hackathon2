require 'pry'
# Display a menu in the console for the user to interact with.
    # make a list of all the menu options below

# Create a default array of hashes that represent items at a grocery store.
  # create dummy date aka @grocery_store
# OPTION 1) Create a menu option to add items to a user's grocery cart.
  # create a method that 
      # 1. creates an empty list 
      # 2. references @grocery_store and adds to my list
# OPTION 2) Create a menu option to display all the items in the cart.
# OPTION 3) Create a menu option to remove an item from the users cart.
# OPTION 4) Create a menu option to show the total cost of all the items in the user's cart.
# OPTION 5) Add new items to the grocery store.
  # add new item to @grocery_list data
  #shovel the item into the array
# Zip it up and turn it in!

@grocery_store = [
  { item: 'pasta', price: 2.7 },
  { item: 'toothbrush', price: 4.5 },
  { item: 'kitty litter', price: 8.1 },
  { item: 'shampoo', price: 5.0 },
  { item: 'kale', price: 3.99 },
  { item: 'broccoli', price: 1.26 },
  { item: 'dog food', price: 5.9 }
]

@my_cart = []

@total = []
def menu
  puts "What would you like to do?"
  puts "1. Add item to grocery cart"
  puts "2. Display all items in cart"
  puts "3. Remove an item in grocery cart"
  puts "4. Total cost of all items in the user's cart"
  puts "5. Add new items to the grocery store"
  puts "6. Exit"

end

def add_to_cart
  #initialized the array
  puts "Please look at whats in stock and add from there"
  @grocery_store.each do |grocery_item|
    puts "#{grocery_item[:item]} - #{grocery_item[:price]}"
  end
  puts "please add the item"
  @my_cart[:item] =  gets.strip
  @grocery_store.each do |grocery_item|
    if @my_item == grocery_item[:item]
      @my_cart << grocery_item[:item]
      @total << grocery_item[:price]
    end
  end
end

def add_to_store
  @new_grocery_item = {item: "", price: 0.0}
  puts "what is the name of your movie?"
end

def display_items
  @my_cart.each_with_index do |item, index|
    puts "In cart: #{index+1}. #{@my_cart[:item]}"
    puts
  end
end

def remove_item(item_name)
  @my_cart.pop(item_name)
  display_items
end

def totalDue
  total = 0.0
  @my_cart.each do |item|
    total += @my_cart[:price]
    puts "Total due: $#{total}"
  end
end

def app
  menu
  @option = gets.strip.to_i
  case @option

  when 1
    add_to_cart
    app
  when 2
    display_items
    app
  when 3
    display_items
    item_name = gets.strip
    puts "What item do you want to remove from your cart?"
    remove_item
    app
  when 4
    totalDue
    app
  when 5
  when 6
    exit
  else
    puts "bruh wrong number..."
    app
  end
end




app