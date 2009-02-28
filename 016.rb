#!/usr/bin/ruby
# vim:set ts=2 sw=2:

puts (2 ** 1000).to_s.split("").map{|d| d.to_i}.inject(0){|s, d| s + d}
