#!/usr/bin/ruby
# vim:set ts=2 sw=2:

def test x1, y1, x2, y2, x3, y3
	ab = x1 * (y2 - y1) - y1 * (x2 - x1) 
	bc = x2 * (y3 - y2) - y2 * (x3 - x2) 
	ca = x3 * (y1 - y3) - y3 * (x1 - x3) 
	ab * bc > 0 && bc * ca > 0
end

n = 0

File.open("102.txt").read.each do |l|
	x1, y1, x2, y2, x3, y3 = l.split(",").map{|i| i.to_i}
	n += 1 if test x1, y1, x2, y2, x3, y3
end

puts n
