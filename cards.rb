# Create a program that will shuffle a deck of cards and assign a number of players two cards. 
# Make sure to ask the user for the number of players who are playing.

# def make_deck
# 	@arr = []
# 	52.times do |x|
# 		num = x += 1
# 		@arr<<num
# 	end
# end

# puts @arr
# puts "how many users are playing?"
# players = gets.chomp.to_i


deck_num = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
deck_suits = ['Hearts', 'Spades', 'Diamonds', 'Clubs']
players = []
input = ''
puts 'Please enter the first name of all players.'
until input == 'Done'
  input = gets.chomp.capitalize
  players<<input
end
players.pop
players.each do |name|
  puts "#{name}'s cards are #{deck_num.shuffle[0]} of #{deck_suits.shuffle[0]} and #{deck_num.shuffle[0]} of #{deck_suits.shuffle[0]}"
end





