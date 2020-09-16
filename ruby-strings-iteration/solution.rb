def count_multibyte_char(str)
	counter = 0
	
	str.each_char do |chr|
		counter += 1 if chr.bytesize > 1
	end

	counter
end

puts count_multibyte_char('¥1000')