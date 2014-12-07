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
      array = Weapons.array
      list = ''      
      i = 1
      array.each do |each|
        list << " (#{i}) #{each.to_s},"      
        i += 1
      end
      puts "You must choose:#{list}".chop!
      choice = gets.chomp.to_i
    end until Weapons.valid? choice
    user.choice = array[choice -= 1]
    puts "You have chosen well"
  end

  def cpu_round(cpu)
    cpu.choice = Player::make_choice
  end

  def compare(user,cpu)
    msg = Weapons.compare(user,cpu)
  end

  def result(msg)
    puts msg
  end
end