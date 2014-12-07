class Computer < Player

  def choose_weapon
    @weapon = Weapons::RESULTS.keys.sample
  end
end