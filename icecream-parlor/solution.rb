#!/bin/ruby

require 'json'
require 'stringio'

def icecreamParlor(m, arr)
	for i in (0...arr.length) do 
		first = arr[i]
		for j in (0...arr.length) do 
			next if i == j
			second = arr[j]
			return [i + 1, j + 1] if first + second == m
		end
	end
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')
fptr = File.open('out.txt', 'w')

t = gets.to_i

t.times do |t_itr|
    m = gets.to_i

    n = gets.to_i

    arr = gets.rstrip.split(' ').map(&:to_i)

    result = icecreamParlor m, arr

    fptr.write result.join " "
    fptr.write "\n"
end

fptr.close()
