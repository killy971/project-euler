#!/usr/bin/ruby
# vi:ts=2:sw=2

# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindrome n
	digits = n.to_s.split ""
	is_p = true
	s = digits.size
	s.times do |i|
		is_p &= digits[i] == digits[s - i - 1]
	end
	is_p
end

largest = 0

100.upto(999) do |n1|
	n1.upto(999) do |n2|
		p = n1 * n2
		if is_palindrome p
			largest = p if p > largest
		end
	end
end

puts largest
