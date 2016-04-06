# Build a student testing app. 
# The app should have a class of Student and the student should "login" with 
# their email and password before they can take a test. 
# The user should be able to take the test and receive feedback on answers. 
# Their score should be saved and printed at the end of the test. 
# If they score under 60 they should be prompted to take the test again. 

class Student
	def initialize(name, email, password)
		@name, @email, @password = name, email, password
		@test_score = 0
	end
	def email_check
		puts "Please enter your email."
		input = gets.chomp
		if input == @email
			pass_check
		else 
			puts "Sorry, I do not recognize that."
			email_check
		end
	end
	def pass_check
		puts "Please enter your password"
		input = gets.chomp
		if input == @password
			auth_complete
		else
			puts "I am sorry, that is incorrect."
			pass_check
		end
	end
	def auth_complete
		puts "Welcome #{@name}!"
		puts "Are you ready to take the test? Y/N"
		input = gets.chomp.upcase
		if input == "Y"
			test
		elsif input == "N"
			puts "Come back when you are ready!"
			exit
		end			
	end
	def correct
		puts "That is correct!"
		@test_score += 10
	end
	def incorrect
		puts "I am sorry that is incorrect."
	end
	def test
		ques1
		ques2
		ques3
		ques4
		ques5
	end
	def test_result
		puts "Let's see your resluts."
		@test_score = @test_score * 2
		if @test_score >= 60
			puts "Congrats, it looks like you got a #{@test_score} out of 100"
		else
			puts "Uh-Oh, it looks like you need to study more. You got a #{@test_score} out of 100"
			puts "Would you like to retake the test? Y/N"
			response = gets.chomp.upcase
			if response == "Y"
				test
			else
				puts "Come back when you are ready!"
			end
		end
	end
	def ques1
		puts "Is DC the capitol of the US? T/F"
		ans = gets.chomp.upcase
		 if ans == "T"
			correct
		else
			incorrect
		end
	end
	def ques2
		puts "Is Raleigh the capitol of North Carolina? T/F"
		ans = gets.chomp.upcase
		if ans == "T"
			correct
		else
			incorrect
		end
	end
	def ques3
		puts "2+2 = 5? T/F"
		ans = gets.chomp.upcase
		if ans == "F"
			correct
		else
			incorrect
		end
	end
	def ques4
		puts "3+3 = 6? T/F"
		ans = gets.chomp.upcase
		if ans == "T"
			correct
		else
			incorrect
		end
	end
	def ques5
		puts "7+7 = 77? T/F"
		ans = gets.chomp.upcase
		if ans == "F"
			correct
		else
			incorrect
		end
		test_result
	end
end

user1 = Student.new("Brian", "bmcdonald", "xyz")
user1.email_check



