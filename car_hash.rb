hash = {"honda" => "civic", "toyota" => "tacoma", "chevy" => "camaro"}
puts "What type of car do you drive?"
input = gets.chomp.downcase
hash.each do |k,v|
	if input == v
		puts "Oh you drive a #{v}, that's a #{k}, right?"
	end
end

