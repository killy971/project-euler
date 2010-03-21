#!/usr/bin/ruby
# vim:set ts=2 sw=2:

def fact(n, p = 1)
	n < 2 ? p : fact(n-1, n * p)
end

def ncr n, r
	fact(n) / fact(r) / fact(n - r)
end

vn = 0

(1..100).each do |n|
	(1..100).each do |r|
		vn += 1 if ncr(n, r) > 1_000_000
	end
end

puts vn
