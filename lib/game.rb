class Game 
  attr_accessor :player1, :player2, :board, :crt_player_turn  

  def initialize(player1 = "player1", player2 = "player2")
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @board = Board.new 
    @crt_player_turn = @player1
  end

  def change_turn
    @crt_player_turn = (@crt_player_turn == @player1) ? @player2 : @player1 
  end
end 