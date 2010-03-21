#!/usr/bin/ruby
# vim:set ts=2 sw=2:

require 'mathn'

class Integer
	@@primes = Hash.new
	@@prime_generator = Prime.new
	@@last_prime = @@prime_generator.next

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

def consecutive_primes a, b
	n = 0
	while (n ** 2 + a * n + b).is_prime?
		n += 1
	end
	n
end

max_cons = 0
p = 0

(-999..999).each do |a|
	(-999..999).each do |b|
		# puts "%d" % [max_cons]
		cons = consecutive_primes a, b
		if cons > max_cons
			max_cons = cons 
			p = a * b
		end
	end
end

puts max_cons
puts p
