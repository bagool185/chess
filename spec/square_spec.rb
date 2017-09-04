require "spec_helper.rb"

RSpec.describe Square do 
	it "has a color" do 
		square = Square.new(1, 1,"white") 
		expect(square.color).not_to be nil 
	end

	it "is white by default" do 
		square = Square.new(5,5)
		expect(square.color).to eq "white"
	end 

	it "is black if provided" do 
		square = Square.new(1, 2, "black")
		expect(square.color).to eq "black"
	end

	it "has X,Y coordinates" do 
		square = Square.new(1,2,"black")
		expect(square.X).to eq 1 
		expect(square.Y).to eq 2 
	end 

	it "has coordinates in range 0..7" do 
		square = Square.new(3,4,"black")
		expect(square.X).to be_between(0,8).exclusive 
		expect(square.Y).to be_between(0,8).exclusive
	end 

	it "has 8x8 squares" do
		board = Board.new 
		expect(board.squares.size).to eq 64
	end 

	describe context "#build_squares" do 
		it "should return a 8x8 matrix of squares" do 
			board = Board.new 
			matrix = board.build_squares 
			expect(matrix.size).to eq 64 
		end 
	end
end 