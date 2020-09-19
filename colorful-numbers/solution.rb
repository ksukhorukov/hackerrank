#!/usr/bin/env ruby

def colorfulNumber?(number)
	numbers = []
	i = 0
	while i < number.length do
		j = 0
		while j <= number.length - i do
			if not (i == 0 && j == 0)
				numbers << number[i,j] if number[i,j].length > 0 && number[i,j] != number
			end
			j += 1
		end
		i += 1
	end 
	
	products = numbers.map { |n| n.split('').map(&:to_i).reduce(&:*) }

	products.length == products.uniq.length
end

puts colorfulNumber?(gets.strip) ? "YES" : "NO"