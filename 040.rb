#!/usr/bin/ruby
# vim:set ts=2 sw=2:

class FractionalDigit
	def each_digit
		i = 0
		while i = i.next
			i.to_s.each_byte do |d|
				yield d.chr.to_i
			end
		end
	end
end

digits = Array.new
i = 0

FractionalDigit.new.each_digit do |d|
	if [1, 10, 100, 1000, 10000, 100000, 1000000].include? i += 1
		digits << d
	end
	break if i == 1000000
end

puts digits.inject(1) {|p, d| p * d}
