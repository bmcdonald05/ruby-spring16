class Vehicle
	# attr_reader :make, :year
	# attr_writer :year
	attr_accessor :make, :year
	def initialize(make, car_model, year, color)
		@make, @car_model, @year, @color = make, car_model, year, color
	end
	# def make
	# 	@make
	# end
	def car_model
		@car_model
	end
	# def year
	# 	@year
	# end
	def color
		@color
	end
end

car1 = Vehicle.new("Toyota", "Tacoma", 2013, "Grey")

puts car1.car_model
puts car1.make
puts car1.year


# class Vehicle
#   attr_accessor :model, :b, :year
#   def initialize(brand, model, year)
#     @b = brand
#     @model = model
#     @year = year
#   end
#   def model
#     @model
#   end
# end
# new_car = Vehicle.new('Toyota', 'Corolla', 2004)
# puts new_car.model
# puts new_car.b
# puts "This is BEFORE the writer #{new_car.year}"
# new_car.year = 2016
# puts "AFTER the writer #{new_car.year}"