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
				@picked_piece = square.piece 
				
				return square unless square.piece.nil?
				return "There's no piece situated at #{label}"
			end
		end
	end

	def move_piece(board, picked_piece, destination_label)
		board.squares.each do |square|
			if square.label == destination_label 
				square.piece = picked_piece
			end
			if square.label == @picked_square_label
				square.piece = nil 
			end
		end 		
	end
end 

