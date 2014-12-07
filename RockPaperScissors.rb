class RockPaperScissors < Controller
  require_relative 'config'  

  def welcome
    user = Player.new
    puts "Welcome to Rock Paper Scissors"
    puts "We need your name to continue"
    user.name = gets.chomp
    puts "Welcome to to Rock Paper Scissors #{user.name}"
  end

  def play_round
    weapons = ''
    i = 1
    Weapons::RESULTS.map.keys.each do 
      weapons << " (#{i}) #{e.to_s},"
      i += 1
    end    
    puts "You must choose:#{weapons}".chop!
    if choice = gets.chomp.to_i
  end

  foo.each do |variable|
    
  end

end