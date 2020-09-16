#!/usr/bin/ruby

# > strike("Meow!") # => "<strike>Meow!</strike>"
# > strike("Foolan Barik") # => "<strike>Foolan Barik</strike>"
# > mask_article("Hello World! This is crap!", ["crap"])
# "Hello World! This is <strike>crap</strike>!"

def strike(str)
	"<strike>#{str}</strike>"
end

def mask_article(str, replacements)
	replacements.map { |replacement| str.gsub!(/#{replacement}/, strike(replacement)) }
	str
end

puts strike("Meow!") # => "<strike>Meow!</strike>"
puts strike("Foolan Barik") # => "<strike>Foolan Barik</strike>"
puts mask_article("Hello World! This is crap!", ["crap"])

