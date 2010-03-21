#!/usr/bin/ruby
# vim:set ts=2 sw=2:

p = Array.new(100 + 1, 0)

p[0] = 1

(1..100).each do |i|
	s = 0
	j = k = 1
	while j > 0
		j = i - (3 * k * k + k) / 2
		s = s - (-1)** k * p[j] if j >= 0
		j = i - (3 * k * k - k) / 2
		s = s - (-1)** k * p[j] if j >= 0
		k += 1
	end
	p[i] = s
end

puts p[100] - 1
