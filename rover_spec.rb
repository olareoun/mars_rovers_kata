require 'rspec'
require_relative 'rover'
require_relative 'grid'

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
		it "if starting in '5, 3, S' and receives 'FLBRRBBBLF' then ends in '7, 1, S'" do
			rover = Rover.new(5, 3, 'S')

			rover.goto('FLBRRBBBLF')

			rover.print.should eql '7, 1, S'
		end
	end

	describe "Grid limits" do

		let(:grid){Grid.new 100, 100}

		it "si esta en el limite derecho y mirando al este y recibe un F aparece por el oeste" do
			rover = Rover.new(100, 10, 'E', grid)

			rover.move('F')

			rover.print.should eql '0, 10, E'
		end
		it "si esta en el limite izquierdo y mirando al oeste y recibe un F aparece por el este" do
			rover = Rover.new(0, 10, 'W', grid)

			rover.move('F')

			rover.print.should eql '100, 10, W'
		end
		it "si esta en el limite inferior y mirando al sur y recibe un F aparece por el norte" do
			rover = Rover.new(10, 0, 'S', grid)

			rover.move('F')

			rover.print.should eql '10, 100, S'
		end
		it "si esta en el limite superior y mirando al norte y recibe un F aparece por el sur" do
			rover = Rover.new(10, 100, 'N', grid)

			rover.move('F')

			rover.print.should eql '10, 0, N'
		end
	end

end