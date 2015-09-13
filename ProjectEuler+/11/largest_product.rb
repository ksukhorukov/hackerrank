#!/usr/bin/env ruby

require 'pp'

lines = 20
matrix = []
while lines > 0
  row = $stdin.gets.strip.split(' ').map(&:to_i)
  matrix << row
  lines -= 1
end

pp matrix

#TODO
#find solution


