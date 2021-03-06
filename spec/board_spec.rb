require "spec_helper.rb"

RSpec.describe Board do 
	it "has a size of 8x8" do 
		board = Board.new 
		expect(board.size).to eq 8 
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

	describe context "#change_color" do 
		it "switches the current color" do 
			board = Board.new 
			crt_color = "white"
			crt_color = board.change_color(crt_color)
			expect(crt_color).to eq "black"
		end
	end
end 

