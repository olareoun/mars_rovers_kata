class Grid

	def initialize(sideLimit, topLimit)
		@sideLimit = sideLimit
		@topLimit = topLimit
	end

	def sideLimit
		@sideLimit
	end

	def topLimit
		@topLimit
	end

	def wrapUpperLimit(coordinate)
		return moduleWithTopLimit(coordinate) - 1
		coordinate
	end

	def wrapBottomLimit(coordinate)
		return moduleWithTopLimit(coordinate) + 1
		coordinate
	end

	def moduleWithTopLimit(coordinate)
		coordinate % @topLimit
	end

	def wrapRightLimit(coordinate)
		return moduleWithSideLimit(coordinate) - 1
		coordinate
	end

	def wrapLeftLimit(coordinate)
		return moduleWithSideLimit(coordinate) + 1
		coordinate
	end

	def moduleWithSideLimit(coordinate)
		coordinate % @sideLimit
	end

end