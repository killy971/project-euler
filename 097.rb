#!/usr/bin/ruby
# vim:set ts=2 sw=2:

prime = 28433

7830457.times do |i|
	prime *= 2
	prime %= 10_000_000_000 if prime > 1_000_000_000_000_000
end

prime += 1

puts prime % 10_000_000_000
