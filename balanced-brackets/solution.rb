#!/bin/ruby

require 'json'
require 'stringio'

def isBalanced(s)
	stack = []

	s.each_char do |chr|
		if chr == '[' || chr == '{' || chr == '('
			stack.push chr
		else
			balancer = stack.pop
			if (balancer == '[' && chr == ']') || (balancer == '{' && chr == '}') || (balancer == '(' && chr == ')')
				next
			else
				return false
			end 
		end
	end

	return false if stack.length > 0
	
	true
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')
fptr = File.open('out.txt', 'w')

t = gets.to_i

t.times do |t_itr|
    s = gets.to_s.rstrip

    result = isBalanced s

    fptr.write (result == true ? "YES" : "NO")
    fptr.write "\n"
end

fptr.close()
