class Fates < Loader

  FATES = ["You are eaten by a bear", "You are devoured by a lion", "You are struck by lighting...you die!"]
  def self.horrible_fate
    puts FATES.sample
    puts "GAME OVER"
    abort
  end
end