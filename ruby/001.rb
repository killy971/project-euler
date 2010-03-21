#!/usr/bin/ruby
# vi:ts=2:sw=2

# Add all the natural numbers below one thousand that are multiples of 3 or 5.

puts (1..999).inject(0){|s,i| s + (i % 3 == 0 || i % 5 == 0 ? i : 0)}
