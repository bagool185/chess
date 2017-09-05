class Square 
	attr_accessor :color, :X, :Y, :label, :adjacency_list, :piece
		
	def initialize(x_coordinate, y_coordinate, label, color = "white")
		@X = x_coordinate 
		@Y = y_coordinate
		@color = color 
		@label = label
		@adjacency_list = [] 
		@piece = nil 
	end
end 