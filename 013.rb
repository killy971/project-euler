#!/usr/bin/ruby
# vim:set ts=2 sw=2:

# puts File.open("013.txt").readlines.map{|l| l[-10..-1].to_i}.inject(0){|s, i| s + i}.to_s[-10..-1]

puts File.open("013.txt").readlines.map{|l| l.to_i}.inject(0){|s, i| s + i}.to_s[0, 10]
