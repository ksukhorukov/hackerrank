#!/usr/bin/env ruby

def fib(n)
	if n <= 1
		return 0
	elsif n == 2
		return 1
	else
		return fib(n - 1) + fib(n - 2)
	end
end

n = gets.to_i

puts fib(n)