#!/usr/bin/ruby1.9
# vim:set ts=2 sw=2:

require 'mathn'

n = 0

(1..10**8).each do |i|
	Prime.new.each do |p|
		if i == 1
			n += 1
			break
		end
		break if p > 5
		if i % p == 0
			i /= p
			redo
		end
	end
end

puts n
