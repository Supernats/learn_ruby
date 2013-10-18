class Temperature
attr_accessor :f, :c
	
	def initialize(opts={})
		@f = opts[:f]
		@c = opts[:c]
		if @c.nil?
			@c = (@f - 32.0)*(5.0/9.0)
		end
		if @f.nil?
			@f = @c * (9.0/5.0) + 32
		end
	end

	def in_fahrenheit
		@f
	end

	def in_celsius
		@c
	end

end