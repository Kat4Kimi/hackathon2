class Deck
  # Getter and Setter methods for rank, suit and color
  attr_accessor :cards
 
  # Gets called when you call the new method to create an instance
  # deck = Deck.new
  def initialize
    @ranks = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
    @suits = %w(Spades Diamonds Clubs Hearts)
    @cards = []
    generate_deck
  end
 
  def shuffle_cards
   @cards.shuffle!
  end
  
  def generate_deck
    @suits.each do |suit|
      @ranks.size.times do |i|
        # Ternary Operator
        color = (suit == 'Spades' || suit == 'Clubs') ? 'Black' : 'Red' # If the suit is spades or clubes return black. Otherwise it will return red (This is helpful for roulette)
        @cards << Card.new(@ranks[i], suit, color)
      end
    end
  end
 
   def display_cards
     @cards.shuffle.each do |card|
       puts "#{card.rank} #{card.suit} (#{card.color})"
     end 
   end

   def deal
    @cards.pop
   end
   

  #  def deal(num, player)
  #   # num.times {@cards.shift.generate_card(player)} Does this do the same thing as @card.pop?
  #   @cards.pop
  #   puts "\n\nHere are your cards:"
  #   deck = Deck.new
  #   deck.deal(2, human)

  #   puts "The #{human.hand[0].rank} of #{human.hand[0].suit}"
  #   puts "The #{human.hand[1].rank} of #{human.hand[1].suit}\n\n""
  #  end

  #  deck.deal(2, computer)
  #  deck.deal(2, human)
 end

