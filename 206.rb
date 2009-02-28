#!/usr/bin/ruby
# vim:set ts=2 sw=2:

min = Math.sqrt(1020304050607080900 - 1).ceil
max = Math.sqrt(1929394959697989990 + 1).floor

digits = (1..9).map {|d| d.to_s[0]}
digits << ?0

(min..max).each do |i|
	square = i ** 2
	str_sq = square.to_s
	matched = 0
	(0..9).to_a.reverse_each do |d|
		break if str_sq[d * 2] != digits[d]
		matched += 1
	end
	if matched == 10
		puts i
		break
	end
end
