#!/usr/bin/ruby
# vim:set ts=2 sw=2:

# Starting in the top left corner of a 2×2 grid, there are 6 routes
# (without backtracking) to the bottom right corner.
# How many routes are there through a 20×20 grid?

# formula : ((h - 1) + (w - 1))! / ((w - 1)! * (h - 1)!)

$c = Hash.new

def paths(w, h, x = 0, y = 0)
	return 1 if x == w - 1 && y == h - 1 
	return $c[[x, y]] if $c[[x, y]] 
	n = 0
	n += paths(w, h, x + 1, y) if x != w - 1 
	n += paths(w, h, x, y + 1) if y != h - 1 
	$c[[x, y]] = n
	n
end

puts paths(20 + 1, 20 + 1)
