# puts "Please give me a number 1 through 10"
# num = gets.chomp.to_i
# until num >= 20
# 	puts num
# 	num *= 2
# end


puts "Please give me a number 1 through 10"
num = gets.chomp.to_i
until num == 1
	num -= 1
	puts num
end