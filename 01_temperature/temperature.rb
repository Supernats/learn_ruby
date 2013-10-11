def float_it(num)
	if num.class == Fixnum
		num = num.to_f
	end
	num
end

def ftoc(fahr)
	float_it(fahr)
	(fahr - 32.0)*(5.0/9.0)
end

def ctof(cels)
	float_it(cels)
	cels * (9.0/5.0) + 32
end