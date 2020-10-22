#!/bin/ruby

require 'json'
require 'stringio'

# Complete the maxXor function below.
def maxXor(arr, queries)
    result = []

    for i in 0...queries.length do 
    	result << arr.map { |e| e ^ queries[i] }.max
    end

    result
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

m = gets.to_i

queries = Array.new(m)

m.times do |i|
    queries_item = gets.to_i
    queries[i] = queries_item
end

result = maxXor arr, queries

puts result

# fptr.write result.join "\n"
# fptr.write "\n"

# fptr.close()
