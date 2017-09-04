require "spec_helper.rb"

RSpec.describe Board do 
	it "has a size of 8x8" do 
		board = Board.new 
		expect(board.size).to eq 8 
	end 
end 