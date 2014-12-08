class User < Player 
  attr_accessor :cash, :wins, :fate_count, :user

  FATES = ["eaten by a bear", "devoured by a lion", "struck by lighting...and then he died!"]
  
  def horrible_fate
    puts "Here lies #{self.name} #{FATES.sample}"
    puts "GAME OVER"
    abort
  end
  
  def initialize    
    @cash = 1000
    @wins = 0
    @fate_count = 0
  end

  def ask_name
    puts "We need your name to continue"
    self.name = gets.chomp
    puts "Welcome to to Rock Paper Scissors #{self.name}"
    self.name
  end



  def add_fate
    self.fate_count += 1
    self.check_fate?
  end  

  def check_fate?
    puts "You have a bad feeling" if fate_count > 3
    self.horrible_fate if fate_count > 5 
  end

  def choose_weapon
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
      weapon = gets.chomp.to_i      
      self.add_fate unless Weapons.valid? weapon      
    end until Weapons.valid? weapon
    self.weapon = array[weapon -= 1]
  end 
end