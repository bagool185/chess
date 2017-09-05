require "piece"

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

	def add_adjacent_node(square)
		adjacency_list << square 
	end

	def is_adjacent?(label)
		return @adjacency_list.any? { |square| square.label == label }
	end
end 