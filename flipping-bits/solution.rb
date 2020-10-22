#!/bin/ruby

require 'json'
require 'stringio'

def flippingBits(n)
	binary_number = n.to_s(2)
	padding = '0' * (32 - binary_number.length)
	binary_number = padding + binary_number

	binary_number = binary_number.split('').map { |digit| digit == '1' ? '0' : '1' }.join

	binary_number.to_i(2)
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

q = gets.to_i

q.times do |q_itr|
    n = gets.to_i

    result = flippingBits n

    puts result
    # fptr.write result
    # fptr.write "\n"
end

# fptr.close()
