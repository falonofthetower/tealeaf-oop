require 'pry'
class Board
  attr_accessor :squares

  def initialize
    @squares = {
      one: " ",
      two: " ",
      three: " ",
      four: " ",
      five: " ",
      six: " ",
      seven: " ",
      eight: " ",
      nine: " "
    }
  end
end
binding.pry