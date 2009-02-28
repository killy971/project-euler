#!/usr/bin/ruby
# vim:set ts=2 sw=2:

t = File.open "067.txt"

*l = 0
l = i = -1, *split.map{|j| j.to_i + l[i += 1, 2].max} while t.gets
puts l.max
