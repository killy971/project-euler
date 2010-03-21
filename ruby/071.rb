#!/usr/bin/ruby1.9
# vim:set ts=2 sw=2:

closest = closest_n = 0

n = 3.to_f
d = 7.to_f

UPPER = n / d

while d < 1_000_000
	d += 1
	n += 1 while (n + 1) / d < UPPER
	if n / d > closest
		closest = n / d
		closest_n = n
	end
end

puts closest_n.to_i
