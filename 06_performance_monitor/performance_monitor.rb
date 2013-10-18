def measure(count = 1)
	a = Time.now
	count.times { yield }
	b = Time.now
	(b - a).to_f/count.to_f
end