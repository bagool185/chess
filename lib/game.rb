require "io/console"
require_relative "player"

class Game 
  attr_accessor :player1, :player2, :board, :crt_player_turn, :game_started, :game_ended 

  def initialize(player1 = "player1", player2 = "player2")
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @board = Board.new 
    @crt_player_turn = @player1
    @game_started = false 
    @game_ended = false 
  end

  def change_turn
    @crt_player_turn = (@crt_player_turn == @player1) ? @player2 : @player1 
  end

  def start_game 
    puts "Welcome to the mighty game of chess!"
    puts "The rules are identical to the official ones"
    puts "When asked to pick a piece, type the label assigned to its place"
    puts "e.g. the white rook is initially placed at A1"
    puts "Now let's begin!"

    @game_started = true 

    while is_running? 
      @board.display_board 

      puts "\n It's #{@crt_player_turn.name}'s turn."
      puts "Pick a piece: "

      picked_label = gets.chomp
      picked_square = @crt_player_turn.pick_square(@board, picked_label)

      if picked_square.is_a?(Square)
        puts "Where do you move the piece?: "
        move_to_label = gets.chomp 
        error = @crt_player_turn.move_piece(@board, picked_square.piece, move_to_label)
        
        change_turn

        if !error.nil?
          puts error 
        end 
      else 
         puts picked_square 
      end
    end 
  end 

  def is_running? 
    return (@game_started ^ @game_ended)
  end 
end 
