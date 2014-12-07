class User < Player 

  def ask_name
    puts "We need your name to continue"
    self.name = gets.chomp
    puts "Welcome to to Rock Paper Scissors #{self.name}"
    self.name
  end

  def make_choice
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
    self.choice = array[choice -= 1]
  end 
end