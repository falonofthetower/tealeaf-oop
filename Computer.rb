class Computer < Player
  attr_accessor :wins

  def initialize
      @wins = 0
  end

  def choose_weapon
    @weapon = Weapons::RESULTS.keys.sample
  end
end