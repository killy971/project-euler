#!/usr/bin/ruby
# vim:set ts=2 sw=2:

fib = [0, 1]
i = 1
nextFib = fib[i]

while nextFib.to_s.size < 1000
	nextFib = fib[0] + fib[1]
	fib[(i += 1) % 2] = nextFib
end

puts i
