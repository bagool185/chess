require "square"

class Board 
	attr_accessor :size, :squares

	def initialize
		@size = 8 
		@squares = build_squares
	end

	def build_squares 
		crt_color = "white"

		temp_matrix = []

		('A'..'H').each do |i| 
			(1..8).each do |j|  
				label = i + j.to_s 
				# prepend the node into the graph
				temp_matrix.unshift(Square.new(i, j, label, crt_color))
				# alternate the crt_color 
				crt_color = (crt_color == "white") ? "black" : "white"
			end
		end 

		return temp_matrix
	end
end 