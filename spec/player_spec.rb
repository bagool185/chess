require "spec_helper"

RSpec.describe Player do
  it "has a name assigned through constructor" do 
		player = Player.new("bagool")
		expect(player.name).to eql "bagool"
  end 
end