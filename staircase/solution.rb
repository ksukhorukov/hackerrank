#!/bin/ruby

n = gets.strip.to_i

for i in 0...n do
    spaces = n - (i+1)
    for j in 0...spaces
        print ' '
    end
    for k in 0..i
        print '#'
    end
    puts
end