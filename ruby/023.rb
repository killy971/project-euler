#!/usr/bin/ruby1.9
# vim:set ts=2 sw=2:

class Integer
	def abundant?
		(1..(self / 2)).select {|i| self % i == 0}.inject(0) {|s, e| s + e} > self
	end
	def sum_of_two_abundants?
		return false if self < 24
		a = self - 11
		while a > self / 2 - 1
			a -= 1
			next if !$abundants[a]
			next if !$abundants[self - a]
			return true
		end
		false
	end
end

$abundants = (0..28123).map {|i| i.abundant?}

sum = (1..28123).select {|i| !i.sum_of_two_abundants?}.inject(0) {|s, e| s + e}

puts sum
