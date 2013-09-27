require_relative 'unlimited_grid'

class Point

	def initialize(x, y, grid = nil)
		@x = x
		@y = y
		@grid = grid || UnlimitedGrid.new
	end

	def incX
		@x = @grid.wrapRightLimit @x + 1
	end

	def decX
		@x = @grid.wrapLeftLimit @x - 1
	end

	def incY
		@y = @grid.wrapUpperLimit @y + 1
	end

	def decY
		@y = @grid.wrapBottomLimit @y - 1
	end

	def print
		@x.to_s + ', ' + @y.to_s
	end

end