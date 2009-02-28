#!/usr/bin/ruby
# vim:set ts=2 sw=2:

1.upto(1000) do |a|
	(a + 1).upto(1000) do |b|
		c = 1000 - a - b
		break if c < b
		if a + b + c == 1000
			if a ** 2 + b ** 2 == c ** 2
				puts a * b * c
				exit
			end
		end
	end
end

