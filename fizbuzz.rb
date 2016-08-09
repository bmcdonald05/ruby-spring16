def fiz
  num = 0
  until num == 50 do
    num +=1
    puts "The number is #{num}"
    if num % 5 == 0
      puts "Fizz Buzz"
    elsif num % 2 == 0
      puts "Buzz"
    else
      puts "Fizz"
    end
  end
end

fiz
