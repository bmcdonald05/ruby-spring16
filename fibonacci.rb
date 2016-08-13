n = 9
def fib(n)
  if n == 0 || n == 1
    return n
  else
    return fib(n-1) + (fib(n-2))
  end
end


puts "#{fib(n)}"


# def fibonacci(n)
#   if n == 1
#     1
#   elsif n == 2
#     1
#   else
#     fibonacci(n-1) + fibonacci(n-2)
#   end
# end




# 0, 1, 1, 2, 3, 5, 8, 13, 21
