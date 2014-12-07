class Player
  attr_accessor :name, :cash, :choice

  def self.cpu_choice
    choice = Weapons::RESULTS.keys.sample
  end
end