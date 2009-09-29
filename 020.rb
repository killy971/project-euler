#!/usr/bin/ruby
# vim:set ts=2 sw=2:

puts (1..100).inject{|f, i| f * i}.to_s.scan(/\d/).inject(0){|s, d| s += d.to_i}
