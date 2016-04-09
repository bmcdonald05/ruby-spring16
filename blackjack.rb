# Build blackjack
# For level 1 include at least 2 players(you and the computer.)
# You should include the hit(deal another card) or stand(don't deal another card)
# The dealer(the computer) should make it's own decision as to when it should hit and when it should stand. 
# So you shouldn't be inputting hit or stand for it.
# Your app should declare a winner as soon as someone reaches 21, someone exceeds 21(they lose), 
# or if both you and the computer stand.

class Deck
	def initialize
		@value = %w[2 3 4 5 6 7 8 9 10 J Q K A].shuffle!
		@suit = ['Hearts', 'Spades', 'Diamonds', 'Clubs'].shuffle!
		@cards = []
	end
	def build_hand
		2.times do 
			@cards<<@value.sample
			@cards<<@suit.sample
			# @suit.each do |suit|
			# 	@value.each do |number|
			# 		cards<<(suit, number)
			# 	end
			# end
			@cards
		end
		first_move
	end
	def check_hand
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
		p @cards
		@hand_total = @hidden_hand.reduce(:+)
		#p @hand_total
	end
	def first_move
		puts "It looks like you have #{check_hand}"
		if @hand_total == 21
			puts "Blackjack!! You win!"
		else 
			puts "Would you like to hit or stay?"
			response = gets.chomp.downcase
			if response == "hit"
				hit
			elsif response == "stay"
				stay
			else
				puts "That is not an option."
				first_move
			end	
		end
	end
	def hit
		@cards<<@value.sample
		@cards<<@suit.sample
		check_hand
		puts "It looks like you have #{check_hand}"
	end
	def stay
		
	end
end

deck1 = Deck.new
deck1.build_hand





# players = []
# comp_choice = ["hit", "stay"]
# player_choice = ["hit", "stay"]
# value = ['2', '3', '4', '5', '6', '7', '8', '9', '10','J', 'Q', 'K', 'A']
# suit = ['Hearts', 'Spades', 'Diamonds', 'Clubs']

# puts 'Please enter the first name of all players.'
# until input == 'Done'
#   input = gets.chomp.capitalize
#   players<<input
# end
# players.pop









# class Card
#   attr_reader :suit, :value
#   def initialize(suit, value)
#     @suit, @value = suit, value
#   end
#   def value
#     return 10 if ["J", "Q", "K"].include?(@value)
#     return 11 if @value == "A"
#     return @value
#   end
# end
# class Deck
#   attr_reader :cards
#   def initialize
#     @cards = Deck.build_cards
#   end
#   def self.build_cards
#     cards = []
#     [:clubs, :diamonds, :spades, :hearts].each do |suit|
#       (2..10).each do |number|
#         cards << Card.new(suit, number)
#       end
#       ["J", "Q", "K", "A"].each do |facecard|
#         cards << Card.new(suit, facecard)
#       end
#     end
#     cards.shuffle
#   end
# end
