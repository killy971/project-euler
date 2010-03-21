#!/usr/bin/ruby
# vim:set ts=2 sw=2:

def fix n
	if n.to_s.size > 10
		n.to_s[-10,10].to_i
	else
		n
	end
end

def compute n
	res = 1
	n.times do
		res *= n
		res = fix res
	end
	res
end

total = 0

1.upto(1000) do |i|
	total += compute i
	total = fix total
end

puts fix total.to_s[-10, 10]
