class Pet
	attr_reader :name, :type, :sound
	attr_writer :sound
	# attr_accessor :name, :type, :sound
	def initialize(name, type, sound)
		@name = name
		@type = type
		@sound = sound
	end
	# def name
	# 	@name
	# end
	# def type
	# 	@type
	# end
	# def sound
	# 	@sound
	# end
end

newpet = Pet.new("Maggie", "Dog", "Woof")

puts "BEFORE #{newpet.sound}"
newpet.sound = 'bark'
puts "AFTER #{newpet.sound}"
puts newpet.name
puts newpet.type
