class User < Player 
  attr_accessor :cash, :wins, :fate_count, :user, :name

  FATES = ["eaten by a bear", "devoured by a lion", "struck by lighting...and then he died!", "eaten by a grue"]
  
  def horrible_fate
    fate = "Here lies #{self.name} #{FATES.sample}"
    epitaph(fate)
    puts fate
    puts "GAME OVER"
    abort
  end

  def epitaph(fate)
    graveyard = File.open("graveyard.txt", "a")
    graveyard.puts fate
    graveyard.close
  end

  def initialize    
    @cash = 1000
    @wins = 0
    @fate_count = 0
    ask_name
  end

  def ask_name
    puts "We need your name to continue"
    begin
      @name = gets.chomp
      if @name != ''
        puts "Thank you @name"
      else
        puts "You must tell me your name"
      end
    end until @name != ''
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