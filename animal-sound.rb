puts "Please pick: Dog or Cat"
answer = gets.chomp.downcase
if answer == "dog"
	puts "Woof"
elsif answer == "cat"
	puts "Meow"
else
	"please try again"
end
