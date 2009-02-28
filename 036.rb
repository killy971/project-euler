#!/usr/bin/ruby1.9

# vim:set ts=2 sw=2:

def is_palindrome n
	digits = n.to_s.split ""
	is_p = true
	s = digits.size
	s.times do |i|
		is_p &= digits[i] == digits[s - i - 1]
	end
	is_p
end

sum = 0

1.upto(1000000) do |n|
	if is_palindrome(n) && is_palindrome(n.to_s(2))
		sum += n
	end
end

puts sum
