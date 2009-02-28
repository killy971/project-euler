#!/usr/bin/ruby1.9
# vim:set ts=2 sw=2:

# Calculate the sum of all the primes below two million.

require 'mathn'

sum = Prime.new.inject(0) do |s, p|
	break s unless p < 2_000_000
	s + p
end

puts sum
