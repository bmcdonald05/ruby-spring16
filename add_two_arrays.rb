
########################################################
# def make_array  
#   @array =[]
#   @input.times do 
#     num = rand(1..100)
#   @array<<num
# end
# @question = "Please give me a number, I will make random arrays."
# @input = gets.chomp.to_i
# @submit = @input
########################################################


puts 'I add numbers, how many numbers do you want me to add?'
input = gets.chomp.to_i
arr = []
arr2 = []
arr3 = []
input.times do
  arr<<rand(4)
  arr2<<rand(4)
end
p arr
p arr2
arr.each_with_index do |num, index|
  arr3<< num + arr2[index]
end
 puts arr3


