class User < Player 
  attr_accessor :cash, :wins, :name

  def initialize    
    @cash = 1000
    @wins = 0
    ask_name
  end

  def ask_name
    puts "We need your name to continue"
    @name = gets.chomp
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