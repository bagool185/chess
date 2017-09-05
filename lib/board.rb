require_relative "square"
require_relative "pieces_hash"

class Board 
	attr_accessor :size, :squares

	def initialize
		@size = 8 
		# squares will be a graph
		# the method build_squares pushes the nodes into the graph
		@squares = build_squares
	end

	def build_squares 
		crt_color = "black"
		temp_graph = []

		(1..8).reverse_each do |i| 
			('A'..'H').each do |j| 	
				# compose the label of the square
				label = j + i.to_s 
				piece = nil 	
				# iterate thorugh the position hashes to find the piece
				# and then retrieve its color and name by spliting  
				# piece_name (the first word will be the color and the)
				# the second one will be the piece name
				INITIAL_POSITION_HASHES.each do |piece_name, positions|
					if positions.include?(label)
						name = piece_name.split(" ")
						piece = Piece.new(name[1], name[0])
					end
				end
				# prepare the node to be pushed into the graph
				square = Square.new(i, j, label, crt_color)
				square.piece = piece
				# prepend the node into the graph
				temp_graph. << (square)
				crt_color = change_color(crt_color) unless j == 'H'
			end
		end 

		return temp_graph
	end

	def change_color(crt_color) 
		# alternate the crt_color 
		return (crt_color == "white") ? "black" : "white" 
	end

	def display_board 
		@squares.each_with_index do |square, index|
			# if the index is a multiple of 8, then the line has finished			
			puts "\n" if index % 8 == 0
			# if the square doesn't have any square on it, it will print 
			# a white or black square depending on the position
			# white square -> U+25A0
			# black square -> U+25A1
			if square.piece.nil? 
				print "\u25A0 " if square.color == "black"
				print "\u25A1 " if square.color == "white"	
			else 
				print square.piece.shape + " "
			end
		end 
	end 
end 

board = Board.new 
board.display_board