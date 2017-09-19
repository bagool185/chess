require_relative "piece"

class Movement 
  attr_accessor :piece, :vertical, :horizontal, :diagonal 

  def initialize(piece, vertical, horizontal, diagonal) 
    @piece = piece 
    @vertical = vertical
    @horizontal = horizontal 
    @diagonal = diagonal
  end
end
