require "spec_helper"

# the name of a piece should be included in this array
VALID_PIECES_NAMES = ["king", "queen", "rook", "bishop", "knight", "pawn"]

RSpec.describe Piece do
  it "has a name provided by constructor" do 
		piece = Piece.new("knight")
		expect(piece.name).to eq "knight"    
	end
	
	it "has a valid chess piece name" do 
		piece = Piece.new("troll")
		expect(VALID_PIECES_NAMES.include?(piece.name)).to be false 
	end 

	it "has the color white by default" do 
		piece = Piece.new("king")
		expect(piece.color).to eq "white"
	end 

	it "has the color black if provided" do 
		piece = Piece.new("knight", "black")
		expect(piece.color).to eq "black"
	end 

	it "has a specific shape" do 
		piece = Piece.new("knight")
		expect(piece.shape).not_to be nil 
	end 

	describe context "#get_shape" do 
		it "returns the shape specific to a piece" do 
			piece = Piece.new("knight")
			expect(piece.shape).to eq "\u2658"
		end 
	end 
end
