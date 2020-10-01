#!/usr/bin/env ruby

class Node
	attr_accessor :data, :next

	def initialize(value)
		@data = value
	end

	def print_list(node = self)
		return if node == nil
		puts node.data
		print_list(node.next)
	end

	def reverse_list
		prev_node, next_node, current_node = nil, nil, self

		while current_node do 
			next_node = current_node.next
			current_node.next = prev_node
			prev_node, current_node = current_node, next_node
		end

		prev_node
	end
end

n1 = Node.new(1)
n2 = Node.new(2)
n3 = Node.new(3)

n1.next = n2
n2.next = n3

head = n1.reverse_list
head.print_list

