require "spec_helper"
require "piece"

RSpec.describe Player do
  it "has a name assigned through constructor" do 
		player = Player.new("bagool")
		expect(player.name).to eql "bagool"
	end 
	
	it "has a color" do 
		player = Player.new("bagool")
		expect(player.name).not_to be nil
	end 

	it "has white pieces by default" do 
		player = Player.new("bagool")
		expect(player.color).to eql "white"
	end 

	it "has black pieces if specified" do 
		player = Player.new("bagool", "black")
		expect(player.color).to eql "black"
	end 

	describe context "#pick_piece" do 
		it "selects a chess piece on the board based on its position" do 
			player = Player.new("bagool")
			piece = player.pick_piece("A2")
			expect(piece.name).to eq "rook" 
		end
	end
end