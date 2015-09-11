#!/usr/bin/env ruby

def is_palindrom?(number)
  number = number.to_s
  if number == number.reverse 
    true
  else
    false
  end
end

tests = $stdin.gets.to_i
result = []

while tests > 0
  border = $stdin.gets.to_i
  max = -1
  for i in (1..999) do 
    for j in (1..999) do
      product = i * j 
      if product < border and is_palindrom?(product)
        max = product if product > max 
      end
    end
  end
  result << max
  tests -= 1
end

result.each { |n| puts n }

