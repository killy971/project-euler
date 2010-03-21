#!/usr/bin/ruby
# vim:set ts=2 sw=2:

require "bigdecimal"
require "bigdecimal/math"

include BigMath

longest = 0
long_d = 1

(2..1000).each do |i|
	d = BigDecimal.new("1.0") / BigDecimal.new(i.to_s + ".0")
	puts d.to_s('F')
end

puts long_d
