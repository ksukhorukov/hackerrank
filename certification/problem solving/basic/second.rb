#!/bin/ruby

def encryptPassword(s)
  len = s.length
  i = 0
  puts s
  while(i < len) do
    if s[i].match(/[a-z]/) && s[i+1] != nil && s[i+1].match(/[A-Z]/) 
       s[i], s[i+1] = s[i+1], s[i]
       s = s[0..i+1] + '*' + s[i+2..s.length]
       i = i + 2
       next 
    elsif s[i].match(/[0-9]/)
    	s = s[i] + s 
    	s[i+1] = '0'
    	i = i + 2
    else
    	i = i + 1
    end
  end

  s
end

def decryptPassword(s)
	len = s.length
	i = 0
	while(i < len) do 
		if s[i].match(/[0-9]/)
			zero_idx = s.index('0')
			if zero_idx
				s[zero_idx] = s[i] 
				s[i] = ''
				i = i - 1
			end
		elsif s[i] == '*'
			'aB*'
			s[i-2], s[i-1] = s[i-1],s[i-2]
			s[i] = ''
			i = i - 1
		end
		i = i + 1
		len = s.length
	end
	s
end

puts decryptPassword(gets)


