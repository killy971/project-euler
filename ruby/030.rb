#!/usr/bin/ruby
# vim:set ts=2 sw=2:

found = Array.new

10.upto(9 ** 5 * 6) do |i|
	s = i.to_s.split("").inject(0) {|s, d| s + d.to_i ** 5}
	found << s if i == s
end

puts found.inject(0) {|s, f| f + s}
