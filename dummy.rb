puts "Say something"
response = gets.chomp.to_s
until response == "I'm a dummy"
	puts response + "   :P"
	response = gets.chomp
end