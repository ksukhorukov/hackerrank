#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

positive = 0
negative = 0
zeroes = 0
length = arr.size

arr.each do |n|
    positive += 1 if n > 0
    negative += 1 if n < 0
    zeroes += 1 if n == 0
end

puts (positive.to_f / length.to_f).round(6)
puts (negative.to_f / length.to_f).round(6)
puts (zeroes.to_f / length.to_f).round(6)