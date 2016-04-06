class Product
	def initialize(price, cost, category, quantity)
		@price = price
		@cost = cost
		@category = category
		@quantity = quantity
	end
	def price
		@price
	end
	def cost
		@cost
	end
	def category
		@category
	end
	def quantity
		@quantity
	end
  	def sell
    	puts 'How many do you wanna buy'
    	input = gets.chomp.to_i
    	if input > @quantity
      		puts "Sorry, but you requested #{input - @quantity} more than we have in stock."
    	else
    		@quantity -= input
      		puts "You purchased #{input}"
    	end
  	end
end

newitem = Product.new(25, 15, "clothes", 10)

puts newitem.quantity
newitem.sell
puts newitem.quantity
