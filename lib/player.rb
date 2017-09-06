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
		if !valid_label?(label)
			return "The label '#{label}' is not a valid one"
		end

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
		if !valid_label?(destination_label)
			return "The label '#{destination_label}' is not a valid one"
		end 

		safe_to_move = false 

		board.squares.each do |square|
			if square.label == destination_label 
				# check if the square is empty
				if square.piece.nil? 
					square.piece = picked_piece
					safe_to_move = true 
				# if the square is not empty, check whether 
				# the piece it contains is the same color 
				# as the piece to be moved
				elsif square.piece.color == picked_piece.color 
					return "You can't move to #{destination_label}, " +
						"because it is occupied by one of your pieces"
				else 
					square.piece = picked_piece
					safe_to_move = true 		
				end
			end 
		end 		

		if safe_to_move
			board.squares.each do |square| 
				if square.label == @picked_square_label
					square.piece = nil 
				end 
			end  
		end 
	end

	def valid_label?(label)
		('A'..'H').each do |letter| 
			(1..8).each do |digit|
				crt_label = letter + digit.to_s 

				return true if label == crt_label
			end 
		end 

		return false 
	end
end 

