#!/usr/bin/env ruby

def decrypt(secret, message)
	subs = substitution(secret).split('')
	alphabet = ('A'..'Z').to_a
	table = subs.zip(alphabet).inject({}) {|h, kv| h.store(*kv); h }
	result = []
	message.split('').each { |key| result << table[key] }
	result.join
end

def substitution(secret)
	secret_origin = secret.upcase.split('')
	secret_origin.uniq!
	secret = secret.upcase.split('').sort
	secret.uniq!
	alphabet = ('A'..'Z').to_a - secret
  columns = alphabet.each_slice(secret.size).to_a
  columns.unshift secret_origin
  substitution = []
 	secret.each_with_index do |char, col_idx|
 		substitution << []
 		pos_idx = secret_origin.index(char)
 		columns.each do |column|
 			substitution[col_idx] << column[pos_idx]
 		end
 	end
 	substitution.join
end

def cryptology!
	todo = gets.to_i
	results = []
	while todo > 0
		secret = gets.strip
		message = gets.strip.split(' ')
		decrypted = ""
		message.each do |chunk|
	  	results << decrypt(secret, chunk) + ' '
	  end
	  results << "\n"
	  todo = todo - 1
	end
	puts results.join
end

cryptology!





