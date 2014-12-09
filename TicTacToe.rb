# User and computer. Each player makes sequential choices which eventually result in
# one player occupying three squares in a row weather vertically, diagonally, 
# horizontally or board_filled? true. 

class TicTacToe < Loader
  attr_accessor :board
  attr_reader :user, :computer, :board
  
  def initialize
    @user = User.new
    @computer = Computer.new
    @board = Board.new
  end
  
  def welcome(user)
    puts "You find yourself in a cold damp room. The lights flicker on the hunched body sitting in the center of the room."
    puts "You approach cautiously. His face is shrouded in a tattered hood and robe. He doesn't acknowledge your presence until you are almost to him."
    puts "He holds up a hand to stop you and gestures at the floor. There is a grid drawn out in chalk in front of you. He slides a pieces of white chalk towards you."
    puts "He utters in a grating gutteral voice, 'Play, #{user.name}'"
    puts "You look down and realize even a child would know his meaning. Everyone knows how to play THIS game."
  end
  
  def display_board
    system ("clear")
    puts "     |     |     "
    puts "  #{squares[:one]}  |  #{squares[:two]}  |  #{squares[:two]}     "
    puts "     |     |     "
    puts "-----+-----+-----"
    puts "     |     |     "
    puts "  #{squares[:four]}  |  #{squares[:five]}  |  #{squares[:six]}     "
    puts "     |     |     "
    puts "-----+-----+-----"
    puts "     |     |     "
    puts "  #{squares[:seven]}  |  #{squares[:eight]}  |  #{squares[:nine]}     "      
    puts "     |     |     "
  end

  def play_game
    welcome(user)
    begin
      user.choose_square
      board.display_board
      check_for_winner
      computer.choose_square
      board.display_board
      check_for_winner    
    end until false
  end 
end