#!/usr/bin/env ruby

#Project Euler 5: Smallest multiple

def solution(n)
  number = 1
  stop = false
  while !stop
    results = []
    (1..n).each do |divider| 
      if number % divider != 0
        results << false
      else
        results << true
      end
    end
    if results.count {|x| x == false } > 0
      stop = false
      number += 1
    else 
      stop = true
    end 
  end
  number
end

tests = $stdin.gets.to_i
results = []
while tests > 0
  n = $stdin.gets.to_i
  results << solution(n)
  tests -= 1
end

results.each { |x| puts x }