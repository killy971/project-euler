#!/usr/bin/ruby
# vim:set ts=2 sw=2:

puts (1..100).inject(0){|s,i| s+i} ** 2 - (1..100).inject(0){|s,i| s + i ** 2}
