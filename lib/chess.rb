require_relative "game"
require "chess/version"

module Chess
  game = Game.new 
  game.start_game
end
