#!/usr/bin/ruby1.9
# vim:set ts=2 sw=2:

def f x, y
	x * (x + 1) * y * (y + 1)
end

diff = 100
closest = 0

2000.times do |a|
	a.upto(2000) do |b|
		n = f(a, b)
		d = (8_000_000 - n).abs
		if d < diff
			diff = d
			closest = a * b
		end
	end
end

puts closest
