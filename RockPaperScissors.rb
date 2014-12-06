class RockPaperScissors < Controller
  require_relative 'config'  

  def welcome
    user = Player.new
    puts "Welcome to Rock Paper Scissors"
    puts "We need your name to continue"
    user.name = gets.chomp
    puts "Welcome to to Rock Paper Scissors #{user.name}"
  end 

end