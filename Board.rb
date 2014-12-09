class Board < Loader
  attr_accessor :squares
  
  def valid_squares
    self.squares.select { |_,v| v == " " }
  end
  
  def self.valid?(square)
    valid_squares.has_key?(square)
  end
  
  def to_s
    self.each do |each|
      str << "#{each}, " 
    end
    string = str.chop.chop
  end

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