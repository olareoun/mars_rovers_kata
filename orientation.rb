class Orientation

	def initialize(symbol)
		@orientation = North if symbol.eql? 'N'
		@orientation = East if symbol.eql? 'E'
		@orientation = South if symbol.eql? 'S'
		@orientation = West if symbol.eql? 'W'
	end

	def turnRight
		@orientation = @orientation.turnRight
	end

	def turnLeft
		@orientation = @orientation.turnLeft
	end

	def moveFordward(point)
		@orientation.moveFordward point
	end

	def moveBackward(point)
		@orientation.moveBackward point
	end

	def print
		@orientation.print
	end

end

class North

	def self.turnRight
		return East
	end

	def self.turnLeft
		return West
	end

	def self.moveFordward(point)
		point.incY
	end

	def self.moveBackward(point)
		point.decY
	end

	def self.print
		'N'
	end

end

class East

	def self.turnRight
		South
	end

	def self.turnLeft
		return North
	end

	def self.moveFordward(point)
		point.incX
	end

	def self.moveBackward(point)
		point.decX
	end

	def self.print
		'E'
	end

end

class South

	def self.turnRight
		West
	end

	def self.turnLeft
		return East
	end

	def self.moveFordward(point)
		point.decY
	end

	def self.moveBackward(point)
		point.incY
	end

	def self.print
		'S'
	end

end

class West

	def self.turnRight
		North
	end

	def self.turnLeft
		return South
	end

	def self.moveFordward(point)
		point.decX
	end

	def self.moveBackward(point)
		point.incX
	end

	def self.print
		'W'
	end

end