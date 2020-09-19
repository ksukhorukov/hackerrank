#!/usr/bin/env ruby

class Queue
	attr_reader :size 

	def initialize
		@first_stack = []
		@second_stack = []
		@size = 0
	end

	def enque(elem)
		@first_stack.push elem
		@size += 1
	end

	def deque(return_back = false)
		while size > 0 do 
			@second_stack.push @first_stack.pop
			@size -= 1
		end
		
		first_elem = @second_stack.pop
		@second_stack.push first_elem if return_back

		while elem = @second_stack.pop do 
			@first_stack.push elem 
			@size += 1
		end

		first_elem
		# @first_stack.shift
	end

	def head
		puts deque(true)
		# puts @first_stack[0]
	end
end

q = Queue.new

number_of_queries = gets.strip.to_i

while(number_of_queries > 0) do 
	query = gets.strip
	query_type = query[0]

	q.enque(query.split[1]) if query_type == '1'
	q.deque if query_type == '2'
	q.head if query_type == '3'

	number_of_queries -= 1
end