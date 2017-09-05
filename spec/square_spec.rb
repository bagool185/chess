require "spec_helper.rb"

RSpec.describe Square do
	it "has a label" do
		square = Square.new(1, 1, "A1")
		expect(square.label).not_to be nil
	end 
	
	it "has a color" do 
		square = Square.new(1, 1, "A1")
		expect(square.color).not_to be nil 
	end 

	it "is white by default" do 
		square = Square.new(1, 1, "A1")
		expect(square.color).to eq "white"
	end	

	it "is black if provided with parameter" do 
		square = Square.new(1, 2, "A2", "black")
		expect(square.color).to eq "black"
	end 

	it "has an adjacency list" do 
		square = Square.new(1, 1, "A1")
		expect(square.adjacency_list).not_to be nil 
	end

	it "has a nil piece by default" do 
		square = Square.new(1, 1, "A1")
		expect(square.piece).to be nil 
	end

	describe context "#add_adjacent_node" do 
		it "should add push a node into the adjacency list" do 
			square = Square.new(1, 1, "A1")
			square.add_adjacent_node(Square.new(1,2,"A2","black"))
			expect(square.adjacency_list.size).to be > 0 
		end
	end
end 