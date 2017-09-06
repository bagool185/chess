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

  it "has a current player turn" do 
    game = Game.new 
    expect(game.crt_player_turn).not_to be nil 
  end 

  it "sets the first turn to player1" do 
    game = Game.new 
    expect(game.crt_player_turn).to be game.player1
  end 

  describe context "#change_turn" do 
    it "changes turns between players" do 
      game = Game.new 
      game.change_turn
      expect(game.crt_player_turn).to be game.player2 
    end
  end    

  describe context "#is_running?" do 
    it "returns true if the game is running" do 
      game = Game.new 
      game.start_game 
      expect(game.is_running?).to be true 
    end 

    it "returns false if the game has ended or not started" do 
      game = Game.new 
      expect(game.is_running?).to be false 
    end 
  end
end 