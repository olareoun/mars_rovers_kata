require 'rspec'
require_relative 'rover'

describe "Mars Rover" do

	describe "Move Forward" do
	
		it "si el rover esta en la posicion (0, 0) y mirando al norte y recibo un F entonces tiene que estar en (0, 1)" do
			rover = Rover.new(0, 0, 'N')

			rover.move('F')

			rover.print.should eql '0, 1, N'
		end

		it "si el rover esta en la posicion (0, 0) y mirando al sur y recibo un F entonces tiene que estar en (0, -1)" do
			rover = Rover.new(0, 0, 'S')
			rover.move('F')

			rover.print.should eql '0, -1, S'
		end

		it "si el rover esta en la posicion (0, 0) y mirando al este y recibo un F entonces tiene que estar en (1, 0)" do
			rover = Rover.new(0, 0, 'E')
			rover.move('F')

			rover.print.should eql '1, 0, E'
		end

		it "si el rover esta en la posicion (0, 0) y mirando al oeste y recibo un F entonces tiene que estar en (-1, 0)" do
			rover = Rover.new(0, 0, 'W')
			rover.move('F')

			rover.print.should eql '-1, 0, W'
		end

	end

	describe "Move Backward" do
	
		it "si el rover esta en la posicion (0, 0) y mirando al norte y recibo un B entonces tiene que estar en (0, 1)" do
			rover = Rover.new(0, 0, 'N')

			rover.move('B')

			rover.print.should eql '0, -1, N'
		end

		it "si el rover esta en la posicion (0, 0) y mirando al sur y recibo un B entonces tiene que estar en (0, -1)" do
			rover = Rover.new(0, 0, 'S')
			rover.move('B')

			rover.print.should eql '0, 1, S'
		end

		it "si el rover esta en la posicion (0, 0) y mirando al este y recibo un B entonces tiene que estar en (1, 0)" do
			rover = Rover.new(0, 0, 'E')
			rover.move('B')

			rover.print.should eql '-1, 0, E'
		end

		it "si el rover esta en la posicion (0, 0) y mirando al oeste y recibo un B entonces tiene que estar en (-1, 0)" do
			rover = Rover.new(0, 0, 'W')
			rover.move('B')

			rover.print.should eql '1, 0, W'
		end

	end

	describe "Turn Right" do
		it "si el rover mira al N y le decimos que gire R entonces mira al E" do
			rover = Rover.new(0, 0, 'N')
			rover.move('R')

			rover.orientation.should eql 'E'
		end
		it "si el rover mira al E y le decimos que gire R entonces mira al S" do
			rover = Rover.new(0, 0, 'E')
			rover.move('R')

			rover.orientation.should eql 'S'
		end
		it "si el rover mira al S y le decimos que gire R entonces mira al W" do
			rover = Rover.new(0, 0, 'S')
			rover.move('R')

			rover.orientation.should eql 'W'
		end
		it "si el rover mira al W y le decimos que gire R entonces mira al N" do
			rover = Rover.new(0, 0, 'W')
			rover.move('R')

			rover.orientation.should eql 'N'
		end
	end

	describe "Turn Left" do
		it "si el rover mira al N y le decimos que gire L entonces mira al W" do
			rover = Rover.new(0, 0, 'N')
			rover.move('L')

			rover.orientation.should eql 'W'
		end
		it "si el rover mira al E y le decimos que gire L entonces mira al N" do
			rover = Rover.new(0, 0, 'E')
			rover.move('L')

			rover.orientation.should eql 'N'
		end
		it "si el rover mira al S y le decimos que gire L entonces mira al E" do
			rover = Rover.new(0, 0, 'S')
			rover.move('L')

			rover.orientation.should eql 'E'
		end
		it "si el rover mira al W y le decimos que gire L entonces mira al S" do
			rover = Rover.new(0, 0, 'W')
			rover.move('L')

			rover.orientation.should eql 'S'
		end
	end

	describe "Movements sequence" do
		it "if starting in '0, 0, N' and receives 'FFRFF' then ends in '2, 2'" do
			rover = Rover.new(0, 0, 'N')

			rover.goto('FFRFF')

			rover.print.start_with?('2, 2').should be_true
			rover.print.should eql '2, 2, E'
		end
	end

end