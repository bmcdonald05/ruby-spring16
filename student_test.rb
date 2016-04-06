# Build a student testing app. 
# The app should have a class of Student and the student should "login" with 
# their email and password before they can take a test. 
# The user should be able to take the test and receive feedback on answers. 
# Their score should be saved and printed at the end of the test. 
# If they score under 60 they should be prompted to take the test again. 

class Student
	def initialize(name, email, password)
		@name = name
		@email = email
		@password = password
	end
	def email_check
		puts "Please enter your email."
		input = gets.chomp

	end
	def pass_check
		puts "Please enter your password"
		input = gets.chomp
		if input ==@password
			auth_correct
		else
			puts "I am sorry, that is incorrect."
			pass_check
		end
	end
	def auth_complete
		puts "Welcome #{@name}!"
		puts ""
	end
end