class Orientation
  require_relative "direction"
  
  attr_accessor :current
  
  def initialize(initial_orientation)
    @current = initial_orientation
  end

  def turn(direction)
    @current = Direction::directions_hash[@current][direction]
  end
  
end
