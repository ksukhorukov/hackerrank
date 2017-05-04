#!/bin/ruby

arr = gets.strip
arr = arr.split(' ').map(&:to_i)

min_sum = Float::INFINITY
max_sum = 0

for i in 0...arr.size do
    sum = 0
    for j in 0...arr.size do
        sum += arr[j] if i != j
    end
    min_sum = sum if sum < min_sum
    max_sum = sum if sum > max_sum
end

puts "#{min_sum} #{max_sum}"
