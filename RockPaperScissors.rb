class RockPaperScissors < Base
  attr_reader :user, :computer

  def initialize
    @user = User.new
    @computer = Computer.new
  end

  def welcome
    puts "Welcome to Rock Paper Scissors"
    puts "We need your name to continue"
    user.name = gets.chomp
    puts "Welcome to to Rock Paper Scissors #{user.name}"
    user.name
  end    

  def compare_weapons
    user_wins = Weapons::RESULTS.select {|k,v| v.key?(computer.weapon) && k == user.weapon }
    computer_wins = Weapons::RESULTS.select {|k,v| v.key?(user.weapon) && k == computer.weapon }
    if computer_wins.empty? && !user_wins.empty?
      msg = user_wins[user.weapon][computer.weapon]
      return "Your #{user.weapon.capitalize} #{msg} my #{computer.weapon.capitalize} you win!"
    elsif user_wins.empty? && !computer_wins.empty?
      msg = computer_wins[computer.weapon][user.weapon]
      return "My #{computer.weapon.capitalize} #{msg} your #{user.weapon.capitalize} you lose!"
    else
      return "My #{computer.weapon.capitalize} Draws your #{user.weapon.capitalize} "
    end
  end 

  def play_game    
    user.ask_name
    begin
      user.choose_weapon
      computer.choose_weapon
      puts msg = compare_weapons           
    end until false
  end
end
