#!/usr/bin/ruby
# vim:set ts=2 sw=2 fdm=marker:

# {{{
class Array
	def second
		self[1]
	end
end # }}}

class Integer
	def is_bouncy?
		digits = to_s.split("").map{|d| d.to_i}
		digits.sort != digits && digits.sort{|a, b| b <=> a} != digits
	end
end

count = Array.new 2, 0
i = 0 

loop do 
	i += 1
	count[i.is_bouncy? ? 0 : 1] += 1
	break if count.first == 99 * count.second
end

puts i

