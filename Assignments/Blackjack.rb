class Player
	attr_accessor: :name, :hand, :bankroll, :total
	def initilize user_name, hand, bankroll, total
		@user_name = name
		@hand = []
		@wallet = wallet
		@total = total
	end
end

# Create a player and computer default
human = Player.new "Human", [], 100, 0
computer = Player.new "Computer", [], 10000, 0

# Card Class
class Card
attr_accessor :face, :suit, :value
def initilize face, suit, value
	@face = face
	@suit = suit
	@value = value

	class Deck
		def initialize
			# Create an array of face value, suits, and an empty array for cards
			@faces = [*(2..10), 'Jack', 'Queen', 'King', 'Ace']
			@suits = ['clubs', 'spades', 'hearts, 'diamonds']
			@cards = []
			@faces.each do |face|
				if face.class == Integer
					value = face
# if face is an Ace make value = 11
				elsif face == 'Ace'
					value = 11
				else 
					value = 10
				end
			@suits.each do |suit|
				@cards << Card.new(face, suit, value)
			end

		end
# Shuffle the array of cards
@cards.shuffle!
end

def generate_card (player)
	new_card = Card.new face, suit, value
	player.hand << new_card
	# Updates player's total hand value
	player.total = player.total + new_card.value

def deal (num, player)
	num.times {@cards.shift.generate_card(player)}
end
