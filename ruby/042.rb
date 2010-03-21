#!/usr/bin/ruby
# vim:set ts=2 sw=2:

# The n^(th) term of the sequence of triangle numbers is given by,
# t_(n) = ½n(n+1); so the first ten triangle numbers are:
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
# By converting each letter in a word to a number corresponding to its
# alphabetical position and adding these values we form a word value.
# For example, the word value for SKY is 19 + 11 + 25 = 55 = t_(10).
# If the word value is a triangle number then we shall call the word
# a triangle word.

class String
	@@triangle = Hash.new

	def is_triangle?
		return @@triangle[self] unless @@triangle[self].nil?
		v = String.val self
		i = 0
		loop do
			t = String.tri i += 1
			if v == t
				return @@triangle[self] = true
			end
			if v < t
				return @@triangle[self] = false
			end
		end
	end
	
private
	
	def self.tri n
		n * (n + 1) / 2
	end

	def self.val s
		s.downcase.split("").inject(0) {|v, c| v + c[0] - 96}
	end
end

n = File.open("../042.txt").read.gsub(/"/, "").split(",").inject(0) do |s, w|
	s + (w.is_triangle? ? 1 : 0)
end

puts n
