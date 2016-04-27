
def intro
	puts "Lets play a game of Hangman"
	puts "You have to guess letters and find out the word I am thinking of"
	puts "If you guess 6 letters that are NOT in the word, you lose!"
	puts "Let us begin!"
end

def get_word
	dictionary = %w[man word apple daily person lamb lion fact false carrot lemon lime carry shout]
	@word = dictionary.sample
	p @word
	@word_arr = @word.scan(/./)
	@word_arr2 = @word.scan(/./)
	puts "The word has #{@word.length} letters in it."
end

def guess_game
	until @tries == 0 || @word_arr2.length == 0
		puts "Guess a letter"
		guess = gets.chomp.downcase
		puts "You guessed #{guess}"
		if @word_arr.include?(guess)
			puts "#{guess} is indeed one of the letters!"
			@correct_ans +=1
			@word_arr2.delete_if {|x| x == guess}
		else
			puts "#{guess} is not one of the letters."
			@tries -=1
		end
		puts "You have guessed #{@correct_ans} of the #{@word.length} letters, and have #{@tries} attempts left"
		guess_game
	end
end

@correct_ans = 0
@tries = 6
intro
get_word
guess_game
if @word_arr2.length == 0
	puts "You guessed the word! it was '#{@word}'"
else
	puts "You didn't guess the word, it was #{@word}. Look what you did!!!"
	puts  '
________
|      |
|      O
|     \|/ 
|      |
|     / \
|
'
end





