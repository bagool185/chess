require "spec_helper"

# the name of a piece should be included in this array
VALID_PIECES_NAMES = ["King", "Queen", "Rook", "Bishop", "Knight", "Pawn"]

RSpec.describe Piece do
  it "has a name provided by constructor" do 
		piece = Piece.new("Knight")
		expect(piece.name).to eq "Knight"    
	end
	
	it "has a valid chess piece name" do 
		piece = Piece.new("troll")
		expect(VALID_PIECES_NAMES.include?(piece.name)).to be false 
	end 

	it "has the color white by default" do 
		piece = Piece.new("King")
		expect(piece.color).to eq "white"
	end 

	it "has the color black if provided" do 
		piece = Piece.new("Knight", "black")
		expect(piece.color).to eq "black"
	end 

	it "has a specific shape" do 
		piece = Piece.new("Knight")
		expect(piece.shape).not_to be nil 
	end 

	describe context "#get_shape" do 
		it "returns the shape specific to a piece" do 
			piece = Piece.new("Knight")
			expect(piece.shape).to eq "2658"
		end 
	end 
end
