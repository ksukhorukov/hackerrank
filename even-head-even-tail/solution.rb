#!/usr/bin/env ruby

# Switch even pairs of numbers from both sides of the array until there are 
# no new even pairs to switch.
# 
# Example:
#
# input = [1, 2, 9, 11, 4, 16, 12, 15, 3, 8] 
#
# output = [1, 8, 9, 11, 12, 16, 4, 15, 3, 2] 


input = [1, 2, 9, 11, 4, 16, 12, 15, 3, 8] 

def even_tail_index(input, current_head, current_tail)
	while(current_tail > current_head) do 
		return current_tail if input[current_tail].even? 
		current_tail -= 1
	end

	return -1
end

def even_reverser(input)
	tail = even_tail_index(input, 0, input.length - 1)
	head = 0

	while tail > head 
		if input[head].even? 
			if tail > head
				input[head], input[tail] = input[tail], input[head]
				tail = even_tail_index(input, head, tail - 1) 
			end
		end
		head += 1
	end

	input
end

puts even_reverser(input).join(' ')

