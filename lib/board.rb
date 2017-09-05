require_relative "square"

class Board 
	attr_accessor :size, :squares

	def initialize
		@size = 8 
		@squares = build_squares
	end

	def build_squares 
		crt_color = "white"

		temp_matrix = []


		(1..8).reverse_each do |i| 
			('A'..'H').each do |j| 	 
				label = j + i.to_s 
				# prepend the node into the graph
				temp_matrix. << (Square.new(i, j, label, crt_color))
				# alternate the crt_color 
				crt_color = (crt_color == "white") ? "black" : "white"
			end
		end 

		return temp_matrix
	end

	def display_board 
		@squares.each { |square| print square.label }
	end 
end 

board = Board.new 
board.display_board