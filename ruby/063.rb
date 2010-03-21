#!/usr/bin/ruby
# vim:set ts=2 sw=2:

card = 0
f = []

p = 1
loop do
	min = 10 ** (p - 1) - 1
	found = false
	(1..9).reverse_each do |n|
		if n ** p > min
			card += 1
			found = true
		else
			break
		end
	end
	break unless found
	p += 1
end

puts card
