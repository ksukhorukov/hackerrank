#!/usr/bin/env ruby

require 'pp'

def quickSort(arr) 
	return arr if arr.length <= 1

	left = []
	equal = []
	right = []

	pivotal = arr[0]

	for i in 0...arr.length do 
		left << arr[i] if arr[i] < pivotal
		equal << arr[i] if arr[i] == pivotal
		right << arr[i] if arr[i] > pivotal
	end

	result =  quickSort(left) + equal + quickSort(right)
	puts result.join(' ')
	result
end

cnt = gets.to_i;
arr = STDIN.gets.chomp.split(" ").map {|i| i.to_i};
quickSort(arr);