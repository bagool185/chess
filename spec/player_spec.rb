require "spec_helper"
require "piece"
require "square"
require "board"

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

	describe context "#pick_square" do 
		it "selects a square on the board based on its label" do 
			player = Player.new("bagool")
			board = Board.new
			square = player.pick_square(board, "A1")
			expect(square.piece.name).to eq "rook" 
		end

		it "returns error message when picking empty square" do
			player = Player.new("bagool")
			board = Board.new
			square = player.pick_square(board, "C5") 
			expect(square).to eq "There's no piece situated at C5"
		end 
		
		it "saves the label of the current" do 
			player = Player.new("bagool")
			board = Board.new
			square = player.pick_square(board, "A1")
			expect(square.label).to eq "A1" 
		end 

		it "returns error message when label is not valid" do 
			player = Player.new("bagool")
			board = Board.new 
			square = player.pick_square(board, "C9")
			expect(square).to eq "The label 'C9' is not a valid one"
		end 
	end

	describe context "#move_piece" do 
		it "moves a piece to the destination point" do 
			player = Player.new("bagool")
			board = Board.new 
			
			picked_square = player.pick_square(board, "A1")
			player.move_piece(board, picked_square.piece , "C4")
			
			destination = nil 		

			board.squares.each do |square| 
				if square.label == "C4"
					destination = square.piece 
				end
			end 
			
			board.display_board 
			
			expect(destination.name).to eq "rook"
		end

		it "returns error message for invalid moves" do 
			player = Player.new("bagool")
			board = Board.new 

			picked_square = player.pick_square(board, "A1")
			message = player.move_piece(board, picked_square.piece, "A2")

			expect(message).to eq "You can't move to A2, because it is occupied by one of your pieces"
		end 

		it "returns error message for invalid label" do 
			player = Player.new("bagool")
			board = Board.new 

			picked_square = player.pick_square(board, "A1")
			message = player.move_piece(board, picked_square.piece, "A9")

			expect(message).to eq "The label 'A9' is not a valid one"
		end 
	end 

	describe context "#valid_label?" do 
		it "returns true if the label is valid" do 
			player = Player.new("bagool")
			expect(player.valid_label?("A2")).to be true 
		end 

		it "returns false if the label is not valid" do 
			player = Player.new("bagool")
			expect(player.valid_label?("A9")).to be false 
		end
	end
end