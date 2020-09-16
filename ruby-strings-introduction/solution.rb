def single_quote
  'Hello World and others!'
end

def double_quote
  "Hello World and others!"
end

def here_doc
  document = <<-EOF
  Hello World and others!
  EOF
  document.strip
end

puts single_quote
puts double_quote
puts here_doc