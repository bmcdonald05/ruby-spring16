arr = []
5.times do 
	puts "Please give me a number"
	input = gets.to_i
 	arr<<input
 end

 puts arr.reduce(:+)
 puts arr.reduce(1, :*) 
 puts arr.max
 puts arr.min

