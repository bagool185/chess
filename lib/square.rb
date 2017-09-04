class Square 
	attr_accessor :color, :X, :Y 
		
	def initialize(x_coordinate, y_coordinate, color = "white")
		@X = x_coordinate 
		@Y = y_coordinate
		@color = color 
	end
end 