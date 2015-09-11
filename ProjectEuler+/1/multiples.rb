#!/usr/bin/env ruby

#Project Euler #1: Multiples of 3 and 

def solution(n)
  sum = 0
  (1...n).each do |elem|
    sum += elem if elem % 3 == 0 or elem % 5 == 0
  end
  sum
end

limit = $stdin.gets.to_i
result = []
while limit > 0 do 
  line = $stdin.gets.to_i
  result << solution(line)
  limit -= 1
end

puts result.join("\n")