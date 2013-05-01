class Position
  
  attr_accessor :x, :y, :orientation
  
  def initialize(attributes)
    @x = attributes[:x]
    @y = attributes[:y]
  end

  def front
    @y+= 1
  end

  def back
    @y-= 1
  end

  def left
    @x-= 1
  end

  def right
    @x+= 1
  end
  
end
