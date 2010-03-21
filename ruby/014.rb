#!/usr/bin/ruby1.9
# vim:set ts=2 sw=2:

max_length = 0
max_start = 0

1.upto(1000000) do |i|
	n = i
	length = 1
	while n != 1
		length += 1
		if n[0] == 0
			n /= 2
		else
			n = 3 * n + 1
		end
	end
	if length > max_length
		max_start = i
		max_length = length
	end
end

puts max_start
