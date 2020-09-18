#!/bin/ruby


require 'pp'
require 'json'
require 'stringio'

class SinglyLinkedListNode
    attr_accessor :data, :next

    def initialize node_data
        @data = node_data
        @next = nil
    end
end

class SinglyLinkedList
    attr_accessor :head, :tail

    def initialize
        @head = nil
        @tail = nil
    end

    def insert_node node_data
        node = SinglyLinkedListNode.new node_data

        if not self.head
            self.head = node
        else
            self.tail.next = node
        end

        self.tail = node
    end
end

def print_singly_linked_list node, sep, fptr
    while node != nil
        fptr.write node.data

        node = node.next

        fptr.write sep if node != nil
    end
end

def insertNodeAtPosition(llist, data, position)
    counter = 0
    node = llist
    while(counter < position-1) do 
        node = node.next
        counter += 1
    end
    new_node = SinglyLinkedListNode.new data
    node.next, new_node.next = new_node, node.next
    llist
end

fptr = File.open('out.txt', 'w')
# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

llist = SinglyLinkedList.new

gets.to_i.times do
    llist_item = gets.to_i
    llist.insert_node llist_item
end

data = gets.to_i

position = gets.to_i

llist_head = insertNodeAtPosition llist.head, data, position

print_singly_linked_list llist_head, " ", fptr
fptr.write "\n"

fptr.close()
