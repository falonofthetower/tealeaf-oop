class RockPaperScissors < Controller
  require_relative 'config'    
  def welcome(user)    
    #user = Player.new
    puts "Welcome to Rock Paper Scissors"
    puts "We need your name to continue"
    user.name = gets.chomp
    puts "Welcome to to Rock Paper Scissors #{user.name}"
    user.name
  end

  def play_round(user)
    begin
      weapons = Weapons.new
      list = ''      
      i = 1
      Weapons::RESULTS.keys.each do |each|
        list << " (#{i}) #{each.to_s},"      
        i += 1
      end
      puts "You must choose:#{list}".chop!
      user.choice = gets.chomp.to_i
    end until Weapons.valid? user.choice
    puts "You have chosen well"
  end
end