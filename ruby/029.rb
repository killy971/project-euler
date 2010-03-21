#!/usr/bin/ruby
# vim:set ts=2 sw=2:

r = Hash.new

2.upto(100) do |a|
	2.upto(100) do |b|
		r[a ** b] = nil
	end
end

puts r.size
