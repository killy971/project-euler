#!/usr/bin/ruby
# vim:set ts=2 sw=2:

i = 1
a = b = c = 0
t = d = 1

until (i += 2) > 1001
	s = i - 1
	a = d + s
	b = a + s
	c = b + s
	d = c + s
	t += a + b + c + d
end

puts t
