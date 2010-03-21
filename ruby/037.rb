#!/usr/bin/ruby1.9
# vim:set ts=2 sw=2:

require 'mathn'

class Integer
	@@primes = Hash.new
	@@prime_generator = Prime.new
	@@last_prime = @@prime_generator.next

	def is_truncable?
		digits = to_s.split ""
		(1..(digits.size - 1)).each do |i|
			return false unless (digits[0, i] * "").to_i.is_prime?
			return false unless (digits[-i, i] * "").to_i.is_prime?
		end
		true
	end

	def is_prime?
		return @@primes[self] if @@primes[self]
		if self < @@last_prime
			@@primes[self] = false
			return false
		end
		while @@last_prime < self
			@@last_prime = @@prime_generator.next
			@@primes[@@last_prime] = true
		end
		if self == @@last_prime
			return true
		else
			return @@primes[self] = false
		end
	end
end

sum = 0

gen = Prime.new
4.times { gen.next }

11.times do
	p = gen.next
	redo unless p.is_truncable?
	sum += p
end

puts sum
