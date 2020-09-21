#!/bin/ruby

require 'json'
require 'stringio'

def insertionSort2(n, arr)
	i = 1
	while i < n do
		j = i
		while((j > 0) && (arr[j] < arr[j - 1])) do 
			arr[j], arr[j -1] = arr[j - 1], arr[j]
			j -= 1
		end
		i += 1
		puts arr.join(' ') 
	end
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

insertionSort2 n, arr
