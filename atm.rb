# Create an Atm Application that includes:
# An Account class
# 3 attributes: name, balance, pin
# Create 4 additional methods: display_balance, withdraw, deposit, and pin_error. 
# The user should be prompted to enter their pin anytime they call display_balance, withdraw, or deposit.
# pin_error should contain  "Access denied: incorrect PIN." and be puts when the user types the wrong pin.

##### May want to create method for "question" for the pin prompt. DRY

class Account
	def initialize(name, balance, pin)
		@name = name
		@balance = balance.to_i
		@pin = pin.to_i
	end
	def display_balance
		puts "Please enter your pin"
		input = gets.chomp.to_i
		if input == @pin
			puts "Your current balance is #{@balance}"
		else
			puts pin_error
		end
	end
	def withdraw
		puts "Please enter your pin"
		input = gets.chomp.to_i
		if input == @pin
			puts "How much would you like to withdraw"
			take_out = gets.chomp.to_i
			if take_out <= @balance
				@balance -= take_out
				puts "Thank you, you have #{@balance} left in your account."
			else 
				puts "I am sorry you only have #{@balance} left in you account."
			end
		else
			puts pin_error
		end
	end
	def deposit
		puts "Please enter your pin"
		input = gets.chomp.to_i
		if input == @pin
			puts "How much would you like to deposit?"
			put_in = gets.chomp.to_i
			@balance += put_in
			puts "Thank you, you now have #{@balance} in your account."
		else
			puts pin_error
		end
	end
	def pin_error
		puts "Access denied: incorrect PIN."
	end
end

user1 = Account.new("Brian", 1000, 1234)
user1.display_balance
user1.withdraw
user1.deposit