require 'rspec'

require_relative 'orientation'

describe "Orientation" do
	
	describe "Turn Right" do
		it "orientation is North then East" do
			orientation = Orientation.new('N')

			orientation.turnRight

			orientation.print.should eql 'E'
		end
		it "orientation is East then South" do
			orientation = Orientation.new('E')

			orientation.turnRight

			orientation.print.should eql 'S'
		end
		it "orientation is South then West" do
			orientation = Orientation.new('S')

			orientation.turnRight

			orientation.print.should eql 'W'
		end
		it "orientation is West then North" do
			orientation = Orientation.new('W')

			orientation.turnRight

			orientation.print.should eql 'N'
		end
	end

	describe "Turn Left" do
		it "orientation is North then West" do
			orientation = Orientation.new('N')

			orientation.turnLeft

			orientation.print.should eql 'W'
		end
		it "orientation is East then North" do
			orientation = Orientation.new('E')

			orientation.turnLeft

			orientation.print.should eql 'N'
		end
		it "orientation is South then East" do
			orientation = Orientation.new('S')

			orientation.turnLeft

			orientation.print.should eql 'E'
		end
		it "orientation is West then South" do
			orientation = Orientation.new('W')

			orientation.turnLeft

			orientation.print.should eql 'S'
		end
	end

end