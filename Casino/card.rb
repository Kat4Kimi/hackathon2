class Card
  # Getter and Setter methods for rank, suit and color
  attr_accessor :rank, :suit, :color
  # Gets called when you call the new method to create an instance
  # card = Card.new('10', 'Spades', 'Black')
  def initialize(rank, suit, color)
    @rank = rank
    @suit = suit
    @color = color
  end

  def value
  
    case @rank
    when "A"
      11
    when "K"
      10
    when "Q"
      10
    when "J"
      10
    else 
      @rank.to_i
    end

  end
 end
 

#  describe Card do
#   it "should have a suit" do"
#     Card.new.suit.should be_nill"
#   it "should have a value"

#   it "should accept suit and value when building"

#   end
# end


