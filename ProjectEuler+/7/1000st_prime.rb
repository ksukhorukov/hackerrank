#!/usr/bin/env ruby

def primality(n)
  i = 2
  while (i * i <= n) do 
    return false if (n % i == 0)
    i += 1
  end
  true
end

def primes(n)
  results = []
  number = 1
  while results.size <= n do 
    results << number if primality(number)
    number += 1
  end
  results.pop
end


tests = $stdin.gets.to_i
results = []
while tests > 0
  n = $stdin.gets.to_i
  results << primes(n)
  tests -= 1
end

results.each { |x| puts x }