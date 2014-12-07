require_relative 'config'

game = RockPaperScissors.new
user = Player.new
user.name = game.welcome(user)
game.play_round(user)
p user