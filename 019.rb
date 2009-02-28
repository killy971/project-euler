#!/usr/bin/ruby
# vim:set ts=2 sw=2:

s = 0

(1901..2000).each do |year|
	lines =  `echo "#{year}" | ruby cal.rb | grep -A 1 "Su"`.to_s.split "\n"
	(0..3).each do |i|
		line = lines[i * 3 + 1]
		[1, 23, 45].each do |j|
			s += 1 if line[j] == ?1
		end
	end
end

puts s
