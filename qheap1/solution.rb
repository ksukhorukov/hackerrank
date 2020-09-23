#!/usr/bin/env ruby

require 'set'

class Heap
	attr_accessor :heap
	attr_accessor :minimum

	def initialize
		@heap = ::Set.new
		@minimum = Float::INFINITY
	end

	def add(elem)
		@heap.add elem
		@minimum = elem if minimum > elem
	end

	def delete(elem)
		@heap.delete elem
		@minimum = @heap.min
	end

	def min
		puts minimum
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