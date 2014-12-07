class RockPaperScissors < Base  

  def initialize
    @user = User.new
    @computer = Computer.new
  end  

  def compare
    user_wins = Weapons::RESULTS.select {|k,v| v.key?(@computer.choice) && k == @user.choice }
    computer_wins = Weapons::RESULTS.select {|k,v| v.key?(@user.choice) && k == @computer.choice }
    if computer_wins.empty? && !user_wins.empty?
      msg = user_wins[@user.choice][@computer.choice]
      return "Your #{@user.choice.capitalize} #{msg} my #{@computer.choice.capitalize} you win!"
    elsif user_wins.empty? && !computer_wins.empty?
      msg = computer_wins[@computer.choice][@user.choice]
      return "My #{@computer.choice.capitalize} #{msg} your #{@user.choice.capitalize} you lose!"
    else
      return "My #{@computer.choice.capitalize} Draws your #{@user.choice.capitalize} "
    end
  end 

  def play_game    
    user.ask_name
    begin
      user.make_choice
      computer.make_choice
      puts msg = compare            
    end until false    
  end
end