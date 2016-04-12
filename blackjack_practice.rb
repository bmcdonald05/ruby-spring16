class Card
  attr_reader :suit, :value
  def initialize(suit, value)
    @suit = suit
    @value = value
  end
  def value
    @hidden_hand = @cards.select {|val| val.length < 3 }
    @hidden_hand.map! { |num|
    if num == 'J' || num == 'Q' || num == 'K'
      num = 10
    elsif num =='A'
      num = 11
    else
      num = num.to_i
    end
      }
  end
end
class Deck
  attr_reader :cards
  def initialize
    @cards = []
  end
  [:clubs, :diamonds, :spades, :hearts].each do |suit|
    %w[2 3 4 5 6 7 8 9 10 J Q K A]suit

end


