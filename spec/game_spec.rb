RSpec.describe Game do 
  it "has two players" do 
    game = Game.new 
    expect(game.player1).not_to be nil 
    expect(game.player2).not_to be nil 
  end 

  it "has a board" do 
    game = Game.new 
    expect(game.board).not_to be nil 
  end 

  it "sets players' name to player1 and player2 if not provided" do 
    game = Game.new 
    expect(game.player1.name).to eq "player1"
    expect(game.player2.name).to eq "player2"
  end 

  it "sets players' name to those provided" do 
    game = Game.new("bagool","hijwe")
    expect(game.player1.name).to eq "bagool"
    expect(game.player2.name).to eq "hijwe"
  end
end 