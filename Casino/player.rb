require_relative 'wallet'
class Player
	attr_accessor :name, :money, :wallet
	def initialize
		puts "What is your name?"
		@name = gets.strip
		puts "How much money would you like to add?"
		@money = gets.strip.to_i
		@wallet = Wallet.new(@money)
	end

	def deal_player
		new_card = Card.new rank, suit, color
		player.hand << new_card
		player.total += new_card.value
	end
end