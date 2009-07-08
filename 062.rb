#!/usr/bin/ruby
# vi:ts=2:sw=2

card = Hash.new(0)
base = Hash.new
cand = Hash.new

i = len = 0

result = loop do
	key = ((i += 1) ** 3).to_s.split("").map{|d| d.to_i}.sort
	card[key] += 1
	base[key] = i unless base[key]
	cand[key] = base[key] if card[key] == 5
	cand[key].delete key if card[key] == 6
	break cand.values.first ** 3 unless key.size == len || cand.empty?
	len = key.size
end

puts result
