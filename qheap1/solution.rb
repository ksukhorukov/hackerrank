#!/usr/bin/env ruby

require 'set'

class Heap
	attr_accessor :heap

	def initialize
		@heap = ::Set.new
	end

	def add(elem)
		@heap << elem
	end

	def delete(elem)
		@heap.delete elem
	end

	def min
		puts heap.min
	end
end

heap = Heap.new 

n = gets.strip.to_i

while n > 0 do 
	data = gets.strip
	command = data.split

	if command[0] == '1'
		heap.add(command[1].to_i)
	elsif command[0] == '2'
		heap.delete(command[1].to_i)
	elsif command[0] == '3'
		heap.min
	end

	n -= 1
end