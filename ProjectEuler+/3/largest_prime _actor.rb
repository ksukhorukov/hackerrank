#!/usr/bin/env ruby

tests = $stdin.gets.to_i

result = []

def is_prime? n 
  (1..n).each_with_index do |idx|
   return false if n % idx == 0 and idx != 1 and idx != n
  end
  return true
end

while tests > 0
  max = -1
  n  = $stdin.gets.to_i
  (1..n).each do |elem|
    if is_prime? elem
      if n % elem == 0 
        max = elem if elem > max 
      end
    end
  end
  result << max
  tests -= 1
end

result.each { |elem| puts elem }