#!/usr/bin/ruby
# vim:set ts=2 sw=2:

max = 0

(2..99).each do |a|
	(2..99).each do |b|
		sum = (a ** b).to_s.split("").inject(0) {|s, d| s + d.to_i}
		max = sum if sum > max
	end
end

puts max
