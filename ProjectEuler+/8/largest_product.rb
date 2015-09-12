#!/usr/bin/env ruby

def solution(k, n, number)
  data = number.split('').map(&:to_i)
  products = []
  for i in (0..data.size-1).each do 
      if data[i..(k-1)+i] != nil and data[i..(k-1)+i].size == k
        products << data[i..(k-1)+i].reduce(:*)
      end
  end
  products.max
end

tests = $stdin.gets.to_i
results = []
while tests > 0
  n, k = $stdin.gets.strip.split(' ').map(&:to_i)
  number = $stdin.gets.strip
  results << solution(k, n, number)
  tests -= 1
end

results.each { |x| puts x }