#!/usr/bin/ruby
# vi:ts=2:sw=2

LIMIT = 10**7

divs = Array.new(LIMIT, 1)

2.upto(LIMIT) do |d|
	i = 0
	while i < LIMIT
		divs[i] += 1
		i += d
	end
end

i = count = 0
while (i += 1) < LIMIT - 2
	if divs[i] == divs[i + 1]
		count += 1
	end
end

puts count
