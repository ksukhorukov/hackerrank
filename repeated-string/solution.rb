#!/bin/ruby

require 'json'
require 'stringio'

def repeatedString(s, n)
	# this solution is out of time limits
	# repetition = ""

	# if n < s.length
	# 	repetition = s[0, n] 
	# else
	# 	i = 0

	# 	while repetition.length < n do 
	# 		repetition += s[i % s.length]
	# 		i += 1
	# 	end
	# end

	# repetition.split('').count('a')

	# this solution is optimized

	r_length = n / s.length
	r_reminder = n % s.length

	a_count = s.split('').count('a') * r_length

	a_count += s.split('')[0, r_reminder].count('a') if r_reminder != 0

	a_count
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.to_s.rstrip

n = gets.to_i

result = repeatedString s, n

puts result

# fptr.write result
# fptr.write "\n"

# fptr.close()
