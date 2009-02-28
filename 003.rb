#!/usr/bin/ruby
# vi:sw=2:ts=2

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require 'mathn'

g = Prime.new
n = 600851475143
i = 1
p = g.next

while n > 1
	if n % p == 0
		n /= p
		next
	end
	p = g.next
end

puts p

