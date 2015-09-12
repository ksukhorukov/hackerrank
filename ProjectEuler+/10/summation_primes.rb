#!/usr/bin/env ruby

def primality(n)
  i = 2 #1 is not a prime number
  while (i * i <= n) do 
    return false if (n % i == 0)
    i += 1
  end
  true
end

def solution(n)
  primes = []
  for i in (2..n) do 
    primes << i if primality(i)
  end
  primes.reduce(:+)
end

tests = $stdin.gets.to_i
results = []
while tests > 0
  n = $stdin.gets.strip.to_i
  results << solution(n)
  tests -= 1
end

results.each { |x| puts x }