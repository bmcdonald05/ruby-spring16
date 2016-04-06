
	#Closest I got on my own.	
# def keep_adding
# 	sum = 0
# 	arr = Array.new
# 	repeat = "Give me a number!"
# 	puts repeat
# 	input = gets.chomp
# 	if input == "done"
# 	else
# 		input = input.to_i
# 		arr.push(input)
# 		keep_adding
# 	end
# 	sum = arr.reduce(:+) 
# 	puts sum
# end
# puts "Let's play a game, I will keep asking for numbers until you type 'done'.  
# 	Then I will add all the numbers you gave me together!"
# keep_adding


####################################################

input = ""
sum = 0
until input == "done"
	puts "what is a number?"
	input = gets.chomp.downcase
	sum += input.to_i
end
puts "Your sum is #{sum}"





