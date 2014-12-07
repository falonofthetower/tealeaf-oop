class Computer < Player

  def make_choice
    @choice = Weapons::RESULTS.keys.sample
  end
end