#!/usr/bin/ruby
# vim:set ts=2 sw=2:

class Integer
	def is_pal?
		s = to_s
		(s.size / 2).times do |i|
			return false if s[i] != s[s.size - i - 1]
		end
		true
	end

	def is_lychrel?
		sum = self
		50.times do
			return false if (sum += sum.to_s.reverse.to_i).is_pal?
		end
		true
	end
end

n = 0

(0..9999).each do |i|
	n += 1 if i.is_lychrel?
end

puts n
