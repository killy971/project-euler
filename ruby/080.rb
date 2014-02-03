#!/usr/bin/ruby
# vim:set ts=2 sw=2:

require 'bigdecimal/math'

sum = (1..100).inject(0) do |total, i|
	n = BigDecimal.new(i.to_s)
	root = BigMath.sqrt(n, 100).to_s.split("")[2, 100]
	simple_root = Math.sqrt(n)
	digit_sum = simple_root.ceil == simple_root ? 0 : root.inject(0) {|s, d| s + d.to_i }
	total + digit_sum
end

puts sum
