# "Students & Teachers" - write a program that has two arrays, one of student names and one of teacher names. 
# Ask the user for their name, and greet them according to their role 
# (if they're a teacher, it says one thing, if they're a student, it says something else)


def greeting
	teachers = %w[Gary Rachel Stephanie Mike]
	students = %w[Stan Kyle Eric Kenny]
	puts "what is your name?"
	name = gets.chomp.capitalize
	if teachers.include?(name)
		puts "Have a wonderful day molding minds!"
	elsif students.include?(name)
		puts "I've got my eye on you..."
	else
		puts "I have not met you."
	end
end

greeting	
		