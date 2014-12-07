require_relative 'config'

game = RockPaperScissors.new
user = Player.new
cpu = Player.new
game.welcome(user)
game.play_round(user)
game.cpu_round(cpu)
msg = game.compare(user,cpu)
game.result(msg)