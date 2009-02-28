#!/usr/bin/ruby
# vim:set ts=2 sw=2:

# It can be seen that the number, 125874, and its double, 251748, contain
# exactly the same digits, but in a different order.
# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x,
# contain the same digits.

i = 1

class Integer
	def digits
		to_s.split("").map{|d| d.to_i}.sort
	end
end

def same_digits n
	d = n.digits
	(2..6).inject(true) do |r, c|
		r &= (d == (c * n).digits)
	end
end

until same_digits	i
	i += 1
end

puts i
