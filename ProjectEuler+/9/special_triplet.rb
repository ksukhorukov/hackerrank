#!/usr/bin/env ruby

def solution(n)
  triplets = []
  for a in (1..n) do 
    for b in (a+1..n) do 
      c = n - a -b
      break if c < b 
      if (a * a + b * b == c * c) 
        triplets << (a * b * c)
      end
    end
  end
  if triplets.size > 0
    triplets.max 
  else
    -1
  end
end

tests = $stdin.gets.to_i
results = []
while tests > 0
  n = $stdin.gets.strip.to_i
  results << solution(n)
  tests -= 1
end

results.each { |x| puts x }