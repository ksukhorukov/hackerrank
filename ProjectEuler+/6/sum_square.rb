#!/usr/bin/env ruby

#Project Euler #6: Sum square difference

def solution(n)
  sum_of_squares = 0
  square_of_the_sum = 0
  (1..n).each do |v|
    sum_of_squares += v * v
  end
  (1..n).each do |v|
    square_of_the_sum += v
  end
  square_of_the_sum = square_of_the_sum ** 2
  sum_of_squares - square_of_the_sum
end


tests = $stdin.gets.to_i
results = []
while tests > 0
  n = $stdin.gets.to_i
  results << solution(n).abs
  tests -= 1
end

results.each { |x| puts x }