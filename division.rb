# def long_divison
# 	puts "Please enter an integer."
# 	num_1 = Integer(gets.chop) rescue false #built in ruby test for integer type
# 	puts "Please enter a second integer."
# 	num_2 = Integer(gets.chomp) rescue false

# 	if num_1 == 0 || num_2 == 0 
# 		puts "You can't devide by 0, that would cause the universe to collapse!"
# 		long_divison
# 	elsif num_1 && num_2 #need statements to use above equation 
# 		q = num_1 / num_2
# 		r = num_1 % num_2
# 		puts "#{num_1} divided by #{num_2} equals #{q}, with a remainder of #{r}"
# 	else
# 		puts "You did not give me two integers, please try again."
# 		long_divison
# 	end

# end

# long_divison


puts "Give me a number other than 0"
num1 = gets.chomp.to_i
puts "Give me another number other than 0"
num2 = gets.chomp.to_i
if num_1 == 0 || num_2 == 0 
	puts "You can't devide by 0, that would cause the universe to collapse!"
else
	puts num1 / num2
	puts num1 % num2
end

