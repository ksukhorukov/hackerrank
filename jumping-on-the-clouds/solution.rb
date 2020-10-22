#!/bin/ruby

require 'json'
require 'stringio'

# Complete the jumpingOnClouds function below.
def jumpingOnClouds(c)
	i, counter, n = 0, 0, c.length

	while i < n-1 do 
		if c[i + 2] == 0 
			i = i + 2 
		elsif c[i + 1] == 0 
			i = i + 1
		end

		counter += 1
	end

	counter
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

c = gets.rstrip.split(' ').map(&:to_i)

result = jumpingOnClouds c

puts result

# fptr.write result
# fptr.write "\n"

# fptr.close()
