#!/usr/bin/ruby
# vi:ts=2:sw=2

require 'mathn'

divs = Array.new LIMIT = 10 ** 5, 1

Prime.new.each do |p|
	i = 0
	divs[i] *= p while (i += p) < LIMIT
	break if p > LIMIT
end

i = -1
divs.collect! {|r| [i += 1, r]}

divs.sort! {|a, b| a.last == b.last ? a.first <=> b.first : a.last <=> b.last}

p divs[9999].first
