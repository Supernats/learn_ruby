def reverser
	yield.reverse.split.reverse.join(" ")
end

def adder(num = 1)
	yield + num
end

def repeater(count = 1)
	count.times { yield }
end