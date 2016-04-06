#Create a program that will roll a dice twice and output the numbers.

# def dice
# 	sum = 0
# 	2.times do
# 		num = rand(1..6)
# 		sum = sum + num
# 	end
# 	puts sum
# end
# dice


def dice
	2.times do
		num = rand(1..6)
		puts num
	end
end
dice

