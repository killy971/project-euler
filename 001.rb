#!/usr/bin/ruby
# vi:ts=2:sw=2

# Add all the natural numbers below one thousand that are multiples of 3 or 5.

total = (1..999).inject(0) do |sum, i|
	sum + if i % 3 == 0 || i % 5 == 0
		i
	else
		0
	end
end

puts total
