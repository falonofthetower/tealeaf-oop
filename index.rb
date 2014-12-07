require_relative 'config'

game = RockPaperScissors.new
user = Player.new
cpu = Player.new
game.welcome(user)
game.play_round(user)
game.cpu_round(cpu)
p user
p cpu