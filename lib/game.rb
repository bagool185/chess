class Game 
  attr_accessor :player1, :player2, :board 

  def initialize(player1 = "player1", player2 = "player2")
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @board = Board.new 
  end
end 