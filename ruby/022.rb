#!/usr/bin/ruby
# vim:set ts=2 sw=2:

names = File.open("../022.txt").read.gsub(/"/,"").split(",").sort
i = 0
puts names.inject(0) {|t, n| t + (i += 1) * n.downcase.split("").inject(0) {|nt, c| nt + c[0] - 96}}

