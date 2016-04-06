puts "Can you guess the number I am thinking of? It is a number between 1 and 100."
num = gets.chomp.to_i
if num == 47
	puts "Wow! You guessed it!"
elsif num > 40 && num < 46
	puts "Close but no cigar!"
elsif num > 48 && num < 54
	puts "Close but no cigar!"
elsif num == 46 || num == 48
	puts "You ALMOST guessed it!"
else
	puts "Way off, you're bad at this!"
end




##Guessing Game: Store a number in your program between 1 and 10. 
##Ask the user to guess it, if they guessed correctly, puts "Wow!", else, "Nope!"

## make variable of number - integer for future flexability.  