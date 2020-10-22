#!/bin/ruby

require 'json'
require 'stringio'
require 'pp'

def hourglassSum(arr)
	max_hourglass = -Float::INFINITY

	hourglasses = []
	for i in 0...4 do 
		hourglasses.push Array.new(4)
	end

	k, l = 0, 0

	for i in 1..4 do 
		l = 0
		for j in 1..4 do 
			# a b c
			#   d
			# e f g
			hourglasses[k][l] = 
				arr[i - 1][ j - 1] +
				arr[i - 1][j] +
				arr[i - 1][j + 1] +
				arr[i][j] +
				arr[i + 1][j - 1] +
				arr[i + 1][j] +
				arr[i + 1][j + 1]

			max_hourglass = hourglasses[k][l] if hourglasses[k][l] > max_hourglass

			l += 1
		end
		k += 1
	end

	max_hourglass
end

#fptr = File.open(ENV['OUTPUT_PATH'], 'w')

arr = Array.new(6)

6.times do |i|
    arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = hourglassSum arr

pp result
# fptr.write result
# fptr.write "\n"

# fptr.close()
