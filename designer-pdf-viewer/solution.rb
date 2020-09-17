#!/usr/bin/env ruby

require 'json'
require 'stringio'

def designerPdfViewer(h, word)
	heights = {}
	('a'..'z').each_with_index { |chr, idx| heights[chr] = h[idx] }

	heighest_char = -1
	word.each_char do |chr|
		heighest_char = heights[chr] if heights[chr] > heighest_char
	end

	word.length * heighest_char
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

h = gets.rstrip.split(' ').map(&:to_i)

word = gets.to_s.rstrip

result = designerPdfViewer h, word

fptr.write result
fptr.write "\n"

fptr.close()

