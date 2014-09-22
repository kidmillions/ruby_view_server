require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

i = 0

while i < 5 do
	x *= 2
	new_template = ERB.new "X is now: <%= x %>"
	puts new_template.result(binding)
	i += 1
end

my_array = ["Beijing", "New York", "Taipei", "Bangkok"]

my_array.each do |spot|
	array_template = ERB.new "Oh how I'd love to go to <%= spot %>."
	puts array_template.result(binding)
end

