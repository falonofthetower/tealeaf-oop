class RockPaperScissors < Base
  attr_accessor :result
  attr_reader :user, :computer

  def initialize
    @user = User.new
    @computer = Computer.new
    @result = []    
  end   

  def welcome(user)
    puts "Welcome to Rock Paper Scissors, #{user.name}"
  end    

  def compare_weapons
    user_wins = Weapons::RESULTS.select {|k,v| v.key?(computer.weapon) && k == user.weapon }
    computer_wins = Weapons::RESULTS.select {|k,v| v.key?(user.weapon) && k == computer.weapon }
    if computer_wins.empty? && !user_wins.empty?
      verb = user_wins[user.weapon][computer.weapon] 
      result << "Your #{user.weapon.capitalize} #{verb} my #{computer.weapon.capitalize} you win!"
      result << "user"
    elsif user_wins.empty? && !computer_wins.empty?
      verb = computer_wins[computer.weapon][user.weapon]
      result << "My #{computer.weapon.capitalize} #{verb} your #{user.weapon.capitalize} you lose!"
      result << "computer"
    else
      result << "My #{computer.weapon.capitalize} Draws your #{user.weapon.capitalize}"
      result << "draw"
    end
  end

  def display_result
    puts result[0]
    puts "#{user.name}: #{user.wins} Wins | Computer: #{computer.wins} Wins"
    self.result = []
  end 

  def passes_on?
    
  end

  def play_game
    welcome(user)
    begin
      user.choose_weapon
      computer.choose_weapon
      result = compare_weapons      
      if result[1] == "user"
        user.wins += 1 
      elsif result[1] == "computer"
        computer.wins += 1
      end 
      display_result          
    end until false
  end
end