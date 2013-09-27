# dpuerta.herrero@gmail.com
require_relative 'orientation'
require_relative 'point'

class Rover

	def initialize(x, y, orientation)
		@point = Point.new x, y
		@orientation = Orientation.new orientation
	end

	def goto(movements)
		movements.each_char{|movement| move movement}
	end

	def move(direction)
		moveFordward if direction.eql? 'F'
		moveBackward if direction.eql? 'B'
		turnRight if direction.eql? 'R'
		turnLeft if direction.eql? 'L'
	end

	def print
		@point.print + ', ' + @orientation.print
	end

	def orientation
		@orientation.print
	end

	private

	def turnRight
		@orientation.turnRight
	end

	def turnLeft
		@orientation.turnLeft
	end

	def moveFordward
		@orientation.moveFordward @point
	end

	def moveBackward
		@orientation.moveBackward @point
	end

end