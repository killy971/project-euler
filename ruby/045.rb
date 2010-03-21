#!/usr/bin/ruby
# vim:set ts=2 sw=2:

def tri n; n * (n - 1) / 2; end
def pen n; n * (3 * n - 1) / 2; end
def hex n; n * (2 * n - 1); end

tph = Hash.new

tri_i = 285 + 1
pen_i = 165 + 1
hex_i = 143 + 1

(tri_i..100000).each do |i|
	tph[tri i] = 1
end

(pen_i..100000).each do |i|
	p = pen i
	unless tph[p].nil?
		tph[p] = 2
	end
end

(hex_i..100000).each do |i|
	h = hex i
	if tph[h] == 2
		puts h
		break
	end
end
