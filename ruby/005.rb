#!/usr/bin/ruby
# vi:ts=2:sw=2

# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder.
# What is the smallest number that is evenly divisible by all of the numbers
# from 1 to 20?

n = 2 * 3 * 5 * 7 * 11 * 13 * 17 * 19 * 24

def cond i
	(1..20).each do |j|
		return false if i % j != 0
	end
	true
end

n += 1 until cond n

puts n
