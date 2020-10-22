#!/bin/ruby

require 'json'
require 'stringio'

def superDigit(n, k)
	return n if n.to_s.length == 1
	p = n.to_s * k
	return superDigit(p.split('').map(&:to_i).reduce(&:+), 1)
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nk = gets.rstrip.split

n = nk[0].to_s.rstrip

k = nk[1].to_i

result = superDigit n, k

puts result
# fptr.write result
# fptr.write "\n"

# fptr.close()
