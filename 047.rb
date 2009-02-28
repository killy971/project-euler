#!/usr/bin/ruby
# vim:set ts=2 sw=2:

require 'mathn'

numbers = (1..4).to_a
factors = numbers.map {|i| i.prime_division.size}
i = 4

until factors.uniq.size == 1 && factors[0] == 4
	numbers[i % 4] = i + 1
	factors[i % 4] = (i += 1).prime_division.size
end

puts i - 3
