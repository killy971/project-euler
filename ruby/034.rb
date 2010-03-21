#!/usr/bin/ruby1.9
# vim:set ts=2 sw=2:

def fact(n, p = 1)
  n < 2 ? p : fact(n-1, n * p)
end

sum = 0

10.upto(100000) do |i|
	dfs = i.to_s.split("").inject(0) {|s, d| s + fact(d.to_i)}
	sum += i if i == dfs
end

puts sum
