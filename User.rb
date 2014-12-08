class User < Player 
  attr_accessor :cash, :wins

  def initialize    
    @cash = 1000
    @wins = 0    
  end

  def ask_name
    puts "We need your name to continue"
    self.name = gets.chomp
    puts "Welcome to to Rock Paper Scissors #{self.name}"
    self.name
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
    end until Weapons.valid? weapon
    self.weapon = array[weapon -= 1]
  end 
end