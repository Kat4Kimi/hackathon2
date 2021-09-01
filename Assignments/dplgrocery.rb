def main_menu
	puts "Welcome to the DPL Grocery!"
	puts "What is your name?"
	@user_name = gets.strip
	puts "Welcome #{@user_name}, what would you like to do today?"
	puts "1) Add Items to Cart"
	puts "2) View Items in Cart"
	puts "3) Remove Items from Cart"
	puts "4) View Total"
	puts "5) Exit"
	user_input = gets.strip.to_i
end
main_menu


