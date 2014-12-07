class Player < Model 
  attr_accessor :name, :cash, :choice

  def self.make_choice
    choice = Weapons::RESULTS.keys.sample
  end
end