array = []
puts "Please give me a state in the U.S. that you have visited?"
input = gets.chomp
array<<input
until input == 'done'
	puts "Any other states? Type 'done' if you are done."
	input = gets.chomp
	array<<input
end
array.pop
p array