#!/usr/bin/ruby
# vim:set ts=2 sw=2:

i, p = 1, [1]

loop do
	s, m = 0, -1
	j = k = 1
	while j > 0
		j = i - (3 * k * k + k) / 2
		s = s - m * p[j] if j >= 0
		j = i - (3 * k * k - k) / 2
		s = s - m * p[j] if j >= 0
		k += 1
		m *= -1
	end
	break if s % 1_000_000 == 0
	p.concat [s]
	i += 1
end

puts i
