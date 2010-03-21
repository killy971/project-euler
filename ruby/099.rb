#!/usr/bin/ruby
# vim:set ts=2 sw=2:

max = [0, 0]

lines = File.open("../099.txt").read.split

lines.size.times do |i|
	a, b = lines[i].split(",").map {|j| j.to_i}
	v = b * Math.log(a)
	if v > max.first
		max = [v, i + 1]
	end
end

puts max[1]
