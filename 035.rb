#!/usr/bin/ruby1.9
# vim:set ts=2 sw=2:

# The number, 197, is called a circular prime because all rotations of the
# digits: 197, 971, and 719, are themselves prime.
# There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71,
# 73, 79, and 97.
# How many circular primes are there below one million?

require 'mathn'
require 'pp'

$primes = Hash.new
g = Prime.new
while (p = g.next) < 1000000
	$primes[p] = true
end

class Integer
	def is_prime?
		return $primes[self]
	end
end

def circular n
	d = n.to_s.split("").map {|i| i.to_s}
	c = Array.new d.size, ""
	d.size.times do |i|
		d.size.times do |j|
			c[i] += d[(i + j) % d.size]
		end
	end
	c
end

found = Array.new

$primes.each_key do |p|
	circular_prime = true
	c = circular p
	while circular_prime && !c.empty?
		circular_prime &= c.shift.to_i.is_prime?
	end
	found << p if circular_prime
end

puts found.size
