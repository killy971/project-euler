#!/usr/bin/ruby
# vim:set ts=2 sw=2:

require 'permutation'

class Integer
	@@pandigital = (1..9).to_a.map{|d| d.to_s}
	def pandigital?
		return self.to_s.split("").sort == @@pandigital
	end
end

max = 0

(1..5000).each do |i|
	size = 0
	n = Array.new
	(1..9).each do |j|
		suffix = (i * j).to_s
		size += suffix.size
		break if size > 9
		n << suffix
	end
	Permutation.new(n.size).map do |p|
		c = (p.project(n)*'').to_i
		# p c
		map = c if c.pandigital? && c > max
	end
end

puts max
