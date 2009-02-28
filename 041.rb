#!/usr/bin/ruby1.9
# vim:set ts=2 sw=2:

require 'mathn'

class Integer
	def is_pandigital
		str = to_s
		digits = str.split("").sort
		return false if digits.uniq.size < digits.size
		# str[0] == ?1 && str[digits.size - 1] == digits.size + 48
		digits[0].to_i == 1 && digits[digits.size - 1].to_i == digits.size
	end
end

solution = 0

solution = Prime.new.each do |p|
	solution = p if p.is_pandigital
	break p if p > 1_000_000_000
end

puts solution
