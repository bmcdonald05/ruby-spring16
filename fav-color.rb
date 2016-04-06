puts "what is your favorite color?"
color = gets.chomp.downcase.to_s
if color == "blue" || color == "green"
	puts "Solid choice, my friend!"
else
	puts "Really?! #{color} is your favorite color? For shame."
end