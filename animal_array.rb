#arr = %w[Lion Penguin Dog Cat Monkey]
hash = {"Lion" => "Roar", "Penguin" => "Squak", "Dog" => "Woof", "Cat" => "Meow", "Monkey" => "Ooh-Ooh Ah-Ah"}

# arr.each do |x|
#  	puts x
# 	if x == "Monkey"
# 	puts "I love #{x}!"
# 	end
# end

hash.each do |k,v|
	puts "The #{k} goes #{v}"
end

