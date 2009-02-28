#!/usr/bin/ruby
# vim:set ts=2 sw=2:

m = File.open("081.txt").read.split.map{|l| l.split(",").map {|v| v.to_i}}

SIDE = m.first.size

SIDE.times do |i|
	SIDE.times do |j|
		x = (i > 0 ? m[i - 1][j] : nil)
		y = (j > 0 ? m[i][j - 1] : nil)
		x ||= y ||= 0
		y ||= x ||= 0
		m[i][j] += x < y ? x : y
	end
end

p m[SIDE - 1][SIDE - 1]
