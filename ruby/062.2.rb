k = {}
n = 1

loop do
	n += 1
	m = n ** 3
	key = m.to_s.split("").sort.join
	if k.has_key?(key)
		k[key][0] += 1
		k[key] << m
		if k[key][0] == 5
			p k[key]
			break
		end
	else
		k[key] = [1, m]
	end
end

