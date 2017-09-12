require_relative "pieces_hash"

class Piece 
	attr_accessor :name, :color, :shape

	def initialize(name, color = "white")
		@name = name 
		@color = color 
		@shape = get_shape
	end

	def get_shape
		# unicode mappings  
		shape_name = @color + " " + @name

		return SHAPE_HASHES[shape_name.to_s]
	end 

	def valid_move?(from, to)
	end 
end 
