#!/bin/ruby

require 'json'
require 'stringio'

def quickSort(arr)
	left = []
	equal = []
	right = []

	pivotal = arr[0]

	for i in 0...arr.length do 
		left << arr[i] if arr[i] < pivotal
		equal << arr[i] if arr[i] == pivotal
		right << arr[i] if arr[i] > pivotal
	end

	left + equal + right
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = quickSort arr

fptr.write result.join " "
fptr.write "\n"

fptr.close()
