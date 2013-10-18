class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		left = @seconds
		hrs = @seconds / 3600
		left -= hrs * 3600
		mins = left / 60
		left -= mins * 60
		secs = left
		"#{padded(hrs)}:#{padded(mins)}:#{padded(secs)}"
	end

	def padded(num)
		if num < 10
			"0#{num}"
		else
			"#{num}"
		end
	end

end