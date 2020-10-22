#!/bin/ruby

require 'json'
require 'stringio'

def primality(n)
	return "Not prime" if n < 0 || n == 0 || n == 1

	ceil = n / 2
	
	for i in 2..ceil do 
		return "Not prime" if n % i == 0
	end

	"Prime"
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

p = gets.to_i

p.times do |p_itr|
    n = gets.to_i

    result = primality n

    puts result

    # fptr.write result
    # fptr.write "\n"
end

# fptr.close()
