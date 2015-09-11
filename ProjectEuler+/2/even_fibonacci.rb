#!/usr/bin/env ruby 

#Project Euler #2: Even Fibonacci numbers

def fibonacci(n)
  fib1 = 1
  fib2 = 2
  i = 0
  result = []
  result << fib1 
  result << fib2
  while i < n
    tmp = fib2
    fib2 = fib1 + fib2
    fib1 = tmp
    result << fib2 
    i += 1
  end
  result
end

tests = $stdin.gets.to_i
output = []
while tests > 0 do 
  n = $stdin.gets.to_i
  result = fibonacci(n)
  even_numbers = result.select { |x| x % 2 == 0 and x < n }
  output << even_numbers.reduce(&:+)
  tests -= 1
end

output.each do |elem|
  puts elem
end




