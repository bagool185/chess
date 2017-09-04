class Piece 
	attr_accessor :name, :color, :shape

	def initialize(name, color = "white")
		@name = name 
		@color = color 
		@shape = get_shape
	end

	def get_shape
		# unicode mappings  
		shape_codes = {
			"white king" => "2654",
			"white queen" => "2655",
			"white rook" => "2656",
			"white bishop" => "2657",
			"white knight" => "2658",
			"white pawn" => "2659",
			"black king" => "265A",
			"black queen" => "265B",
			"black rook" => "265C",
			"black bishop" => "265D",
			"black knight" => "265E",
			"black pawn" => "265F"
	}

		shape_name = @color + " " + @name.downcase

		return shape_codes[shape_name.to_s]
	end 
end 
