class Point

	def initialize(x, y)
		@x = x
		@y = y
	end

	def incX
		@x = @x + 1
	end

	def decX
		@x = @x - 1
	end

	def incY
		@y = @y + 1
	end

	def decY
		@y = @y - 1
	end		

	def print
		@x.to_s + ', ' + @y.to_s
	end

end