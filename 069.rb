#!/usr/bin/ruby1.9
# vim:set ts=2 sw=2:

require 'mathn'

# obvious
puts Prime.new.inject(1) {|n, p| break n if p * n > 1_000_000; p * n}
