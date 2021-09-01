# If you declare it with a @ symbol it will only be usable within Ruby. 
require_relative 'wallet.rb'

@movies = [
	{name: "Jaws", rating: "PG", genre: "thriller", ticket_price: 10.50}, 
	{name: "Halloween", rating: "R", genre: "horror", ticket_price: 10.50}, 
	{name: "U Turn", rating: "R", genre: "horror", ticket_price: 10.50}, 
	{name: "Raiders of the Lost Ark", rating: "PG", genre: "action", ticket_price: 10.50} 
]

def menu
	puts "Welcome to the DPL Theater!"
	puts "How much would you like to load onto your balance?"
	money = gets.strip.to_f
	@wallet = Wallet.new(money)
	if @wallet.validate_money(money)
		puts "Your current balance is: $#{@wallet.current_balance}"
		puts "What movie would you like to see?"
		view_movies
	else
		puts "Insufficient funds, try again."
		menu
	end
end


	



def view_movies
	@movies.each_with_index do |movie, index|
		puts "#{index + 1}). #{movie[:name]} - #{movie[:rating]} - #{movie[:genre]}"
		puts "$#{movie[:ticket_price]}"
		puts
	end
	@wallet
end


def add_movie
	@movie = {name: "", rating: "", genre: ""}
		puts "What is the name of your movie?"
	@movie[:name] = gets.strip
	@movie[:name] = name
		puts "What is the rating of the movie?"
	@movie[:rating] = gets.strip
		puts "What is the genre?"
		genre = gets.strip
	end

	def handle_movie_select(index)
		money = @wallet.current_balance - @movie[@option - 1][:ticket_price]
		if @wallet.validate_money(money)
			@wallet.subtract_money(@movies[index][:ticket_price])
			puts "Your new balance is: $#{@wallet.current_balance}"
			puts "Enjoy your movie!"
			@wallet.subtract_money(@movies[@option - 1][:ticket_price])
		else
			puts "Insufficient funds."
		end
	end

	def app
		menu
		@option = gets.strip.to_i
	end

	case @option
	when "1"
		handle_movie_select(@option - 1)

	# @movies[@option - 1][:ticket_price]
		menu
	when "2"
		handle_movie_select(@option - 1)
		menu
	when "3"
		handle_movie_select(@option - 1)
		menu
	when "4"
		handle_movie_select(@option - 1)
		menu
	when "5"
		puts "Thank you for using our Movie App!"
		exit
	else
		puts "Please choose a valid option."
		
	end
app




# puts "What would you like to do?"
# 	puts "1) Create a Movie"
# 	puts "2) View All Movies"
# 	puts "3) Update a Movie"
# 	puts "4) Delete a Movie"
# 	puts "5) Exit"
# 	end