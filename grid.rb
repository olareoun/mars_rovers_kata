class Grid

	def initialize(sideLimit, topLimit)
		@sideLimit = sideLimit
		@topLimit = topLimit
	end

	def wrapUpperLimit(coordinate)
		moduleWithTopLimit(coordinate) - 1
	end

	def wrapBottomLimit(coordinate)
		moduleWithTopLimit(coordinate) + 1
	end

	def wrapRightLimit(coordinate)
		moduleWithSideLimit(coordinate) - 1
	end

	def wrapLeftLimit(coordinate)
		moduleWithSideLimit(coordinate) + 1
	end

	private

	def moduleWithTopLimit(coordinate)
		coordinate % @topLimit
	end

	def moduleWithSideLimit(coordinate)
		coordinate % @sideLimit
	end

end