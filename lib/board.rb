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

		(0...8).each do |i| 
			(0...8).each do |j|  
				# push a new square into the matrix at the coords i and j
				temp_matrix << Square.new(i, j, crt_color)
				# alternate the crt_color 
				crt_color = (crt_color == "white") ? "black" : "white"
			end
		end 

		return temp_matrix
	end
end 