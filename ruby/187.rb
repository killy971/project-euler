#!/usr/bin/ruby1.9
# vim:set ts=2 sw=2:

require 'mathn'

# class Integer
#	def has_exactely_two_prime_divisors?
#		divisors_card = 0
#		n = self
#		root = Math.sqrt(n).floor
#		half = n / 2
#		Prime.new.each do |p|
#			if n % p == 0
#				n /= p
#				divisors_card += 1
#				redo
#			end
#			break false if divisors_card == 2 && n > 1    # over 2 prime divisors
#			break true if divisors_card == 2 && n == 1
#			break false if p > root # self is prime
#		end
#	end
#end
#
#solution = (1..100_000_000).inject(0) do |card, i|
#	card + (i.has_exactely_two_prime_divisors? ? (puts i; i) : 0)
#end
#
#puts solution

card = 0

gen = Prime.new

max = 100_000_000
max_root = Math.sqrt(max).ceil

prime = gen.next

while prime < max_root
	sec_gen = Prime.new
	sec_prime = sec_gen.next
	while prime * sec_prime < max
		card += 1
		sec_prime = sec_gen.next
	end
	puts prime
	prime = gen.next
end

puts card
