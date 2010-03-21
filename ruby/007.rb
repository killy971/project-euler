#!/usr/bin/ruby
# vim:set ts=2 sw=2:

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6^(th) prime is 13. What is the 10001^(st) prime number?

require 'mathn'

g = Prime.new
p = 0

10001.times do p = g.next; end

puts p
