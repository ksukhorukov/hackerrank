#!/bin/ruby

n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end

diagonal_j = n - 1
sum1 = 0
sum2 = 0

for i in 0...n do
    for j in 0...n do
        sum1 += a[i][j] if i == j
        sum2 += a[i][j] if j == diagonal_j
    end
    diagonal_j -= 1
end

puts (sum1-sum2).abs

