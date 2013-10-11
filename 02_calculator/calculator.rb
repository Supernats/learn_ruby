def add (num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(nums)
	out = 0
	nums.each do |num|
		out += num
	end
	out
end

def multiply(nums)
	out = 1
	nums.each do |num|
		out *= num
	end
	out
end

def power(base, power)
	out = 1
	power.times do
		out *= base
	end
	out
end

def factorial(num)
	out = 1
	(1..num).each do |i|
		out *= i
	end
	out
end