# def fib(n)
#   n.times.each_with_object([0,1]) { |num, obj| obj << obj[-2] + obj[-1] }
# end
# puts fib(10)


def fib(n)
  if n == 0 || n == 1
    puts n
  else
    puts (fib(n-1)) += (fib(n-2))
  end
end

puts fib(8)
