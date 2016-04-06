computer = "Hello there, my name is HAL. What is your name? You look like a Jacob."
puts computer
name = gets.chomp.capitalize
while name != "Jacob"
	puts "Are you sure your name is #{name}? You look like a Jacob."
	name = gets.chomp.capitalize
end
puts "Hello #{name}, I am glad you are finally here!"