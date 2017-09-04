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

	RSpec.describe context "#valid_move" do 
		it "returns true when a move is valid" do 
			
		end
	end 
end
