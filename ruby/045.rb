#!/usr/bin/ruby
# vim:set ts=2 sw=2:

def pen n; n * (3 * n - 1) / 2; end
def hex n; n * (2 * n - 1); end

tph = Hash.new

pen_i = 165 + 1
hex_i = 143 + 1

(pen_i..100000).each do |i|
	tph[pen i] = true
end

(hex_i..100000).each do |i|
	h = hex i
	if tph[h]
		puts h
		break
	end
end
