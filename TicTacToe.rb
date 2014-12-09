# User and computer. Each player makes sequential choices which eventually result in
# one player occupying three squares in a row weather vertically, diagonally, 
# horizontally or board_filled? true. 

class TicTacToe < Loader
  
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
end