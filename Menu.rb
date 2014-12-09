class Menu < Loader
  attr_accessor :user, :fate_count

  VALID = { intro: ["y","n"] }

  def initialize    
    @user = User.new    
  end
  
  def intro
    system("clear")
    puts "You are walking through the woods one day and come upon a door. No walls, no roof, nothing beside it, nothing behind it."
    begin
      puts "Do you enter? Y/N"          
      input = gets.chomp.downcase      
      user.add_fate
    end until (valid_input?(input,:intro) == true)
    user.horrible_fate if input == "n"                
  end

  def valid_input?(input,question)
     VALID.values_at(question).flatten.include?(input)
  end
end
