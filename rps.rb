def player1
	refresh = 'Please pick rock, paper, or scissors'
	puts refresh
	choice = gets.chomp.downcase
	if ['rock', 'paper', 'scissors'].include?(choice)
		return choice
	else
		puts 'Sorry that is not a choice'
		player1
	end
end
def computer1
	['rock', 'paper', 'scissors'].sample
end

player_choice = player1
comp_choice = computer1


comp_score = 0
player_score = 0
while player_score && comp_score < 5 do
	if player_choice == 'rock' && comp_choice == 'paper'
		puts 'Computer wins! The computer chose paper.'
		comp_score += 1
	elsif player_choice == 'rock' && comp_choice == 'scissors'
		puts 'Player wins! The computer chose scissors'
		player_score += 1
	elsif player_choice == 'paper' && comp_choice == 'scissors'
		puts 'Computer wins! The computer chose scissors'
		comp_score += 1
	elsif player_choice == 'paper' && comp_choice == 'rock'
		puts 'Player wins! The computer chose rock'
		player_score += 1
	elsif player_choice == 'rock' && comp_choice == 'paper'
		puts 'Computer wins! The computer chose paper'
		comp_score += 1
	elsif player_choice == 'rock' && comp_choice == 'scissors'
		puts 'Player wins! The computer chose scissors'
		player_score += 1
	else
		puts 'It\'s a tie!'
	end
	player_choice = player1
	comp_choice = computer1
	if player_score == 5
		puts 'Congrats you won the game!'
	elsif comp_score == 5
		puts 'Sorry, looks like the computer got the best of you :('
	end
end



#if player_choice == 'rock' && comp_choice == 'paper' || player_choice == 'rock' && comp_choice == 'scissors'




# puts 'Welcome to the Ruby Rock, Paper, Scissors game. Please type rock, paper , or scissors.'
# response = gets.chomp.downcase
# comp = rand(3)
# if comp == 0
#   comp = 'rock'
# elsif comp == 1
#   comp = 'paper'
# elsif comp == 2
#   comp = 'scissors'
# end
# ​
# if response != 'rock' && response != 'paper' && response != 'scissors'
#   puts "Woah, #{response} is not an option!"
# else
#   if response == comp
#     puts "We both chose #{response}, guess it's a tie."
#   elsif
#     response == 'rock' && comp == 'paper' || response == 'paper' && comp == 'scissors' || response == 'scissors' && comp == 'rock'
#       puts "You chose #{response} and I chose #{comp}, ha this was too easy."
#   elsif response == 'rock' && comp == 'scissors' || response == 'paper' && comp == 'rock' || response == 'scissors' && comp == 'paper'
#     puts "You chose #{response} and I chose #{comp}, looks like you got lucky this time."
#   end
# end








