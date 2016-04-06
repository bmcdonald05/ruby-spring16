puts "What grade did you get on the paper?"
grade = gets.chomp.to_i
if grade >= 60
	puts "You passed!"
else
	puts "You have to take the class again."	
end