puts "Nobody under 21 allowed in the bar. How old are you"
my_age = gets.chomp.to_i
if my_age >= 21
	puts "Come on in!"
else
	puts "you still have #{21-my_age} year(s) before you can come in here, SCRAM!"
end


# puts "Nobody under 21 allowed in the bar. How old are you"
# my_age = gets.chomp
# if my_age.is_a? Integer 
# 	my_age = my_age.to_i
# 	if my_age >= 21
# 		puts "Come on in!"
# 	else
# 		puts "you still have #{21-my_age} years before you can come in here, SCRAM!"
# 	end
# else
# 	puts "Thats not an age I have ever heard of!"
# end
