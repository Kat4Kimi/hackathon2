require_relative 'card'

class Deck
	attr_accessor :cards

	def initialize
    @ranks = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
    @suits = %w(Spades Diamonds Clubs Hearts)
    @cards = []
    generate_deck
  end

	def shuffle_cards
		@cards.shuffle_cards
	end

	def pull_card
		shuffle_cards.first
	end

	def generate_deck
		@suits.each do |suit|
			@ranks.size.times do |i|
				# Ternary Operator
				color = (suit == 'Spades' || suit == 'Clubs') ?
				@cards ,, Card.new(@ranks[i], suit, color)
			end
		end
	end

	def display_cards
		

# def Player
# @player = Player.new
# end

# class Casino
# 	def initialize
# 		@player = Player.new
# 		show_menu
# 	end
# end

# def show_menu
# 	puts "What game would you like to play?"
# 	puts "1. Roulette"
# 	puts "2. High / Low"
# 	puts "3. Blackjack"
# 	puts "4. Check Wallet"
# 	puts "5. Exit"
# 	response = gets.strip.to_i
# 	raise "Bad Input" unless response > 0 && response < 6
	
# 	case response 
# 		when 1 
# 			Roulette
# 		when 2 
# 			High / Low 
# 		when 3
# 			Blackjack
# 		when 4
# 			puts "You have $#{@player.wallet}!"
# 		when 5
# 			puts "Have a nice day!"
# 			Exit
# 		else
# 			raise
# 		end
# 	end

# rescue StandardError => e
# 	puts e
# 	retry
# end