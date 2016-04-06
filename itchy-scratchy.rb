ques = "Can we go to Itchy and Scratchy Land?!?!"
puts ques
ans = gets.chomp.downcase
until ans == "yes"
	puts ques
	ans = gets.chomp.downcase
	if ans == "yes"
		puts "Hooray!"
	end
end