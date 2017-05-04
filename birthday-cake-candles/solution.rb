#!/bin/ruby

n = gets.strip.to_i
height = gets.strip
height = height.split(' ').map(&:to_i)

stats = Hash.new(0)
max = -1
height.each do |n|
    if n >= max
        stats[n] += 1
        max = n
    end
end

puts stats[max]