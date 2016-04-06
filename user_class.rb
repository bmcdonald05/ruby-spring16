class User
	def initialize(email, name)
		@email = email
		@name = name
	end
	def email
		@email
	end
	def name
		@name
	end
end

newuser = User.new(bmcdonald05@gmail.com, Brian)