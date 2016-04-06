def add(x, y)
	sum = x+y
	puts sum
end
def subtract(x, y)
	sum = x-y
	puts sum
end
def multiply(x, y)
	sum = x*y
	puts sum
end
def divide(x, y)
	sum = x/y
	puts sum
end

puts "Please give me a number."
num1 = gets.chomp.to_i
puts "And one more."
num2 = gets.chomp.to_i

puts "What would you like to do: add, subtract, multiply, or divide?"
input = gets.chomp
if input == "add"
	add(num1, num2)
elsif input == "subtract"
	subtract(num1, num2)
elsif input == "multiply"
	multiply(num1, num2)
elsif input == "divide"
	divide(num1, num2)
else
	puts "Sorry I cannot do that."
end

	
	
	







# if ['add', 'subtract', 'multiply', 'divide'].include?(choice)
# 	return choice
# else
# 	puts "I can't do that."
# end

