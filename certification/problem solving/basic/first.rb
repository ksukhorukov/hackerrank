#!/bin/ruby

require 'pp'

def longestSubarray(arr)
  result = []
  results = []
  tmp_subarr = []

  for i in 0...arr.length do 
  	result = []
  	for j in i...arr.length do 
  		tmp_subarr = result + [arr[j]]
  		if differenceIsOne(tmp_subarr) && twoDistinctValues(tmp_subarr)
  			result.push arr[j] 
  		else
  			break
  		end
  	end
  	results.push result.length
  end

 	results.max
 	#results.max { |x| x.length }.length
end

def differenceIsOne(arr)
	for i in 0...arr.length do 
		for j in 0...arr.length do 
			return false if (arr[i] - arr[j]).abs > 1
		end
	end
	return true
end

def twoDistinctValues(arr)
	arr.uniq.length <= 2
end

len = gets.to_i
data = []

for i in 0...len do 
    data[i] = gets.to_i 
end

#print longestSubarray([0,1,2,1,2,3]) 
print longestSubarray(data)
