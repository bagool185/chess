require_relative "piece"
require_relative "square"
require_relative "board"

class Player 
	attr_accessor :name, :color, :picked_square_label
	
	def initialize(name, color = "white")
		@name = name 
		@color = color
	end

	def pick_square(board, label)
		board.squares.each do |square|
			if square.label == label 
				@picked_square_label = square.label

				return square unless square.piece.nil?
				return "There's no piece situated at #{label}"
			end
		end	
	end

	def move_piece(board, picked_piece, destination_label)
		safe_to_move = false 

		board.squares.each do |square|
			if square.label == destination_label && square.piece.nil?
				square.piece = picked_piece
				safe_to_move = true 
			end
		end 		

		if safe_to_move
			board.squares.each do |squares| 
				if square.label == @picked_square_label
					square.piece = nil 
				end 
			end  
		end 
	end
end 

