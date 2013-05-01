require_relative 'position'
require_relative "direction"

class Rover
  attr_accessor :position, :orientation

  def initialize(attributes)
    @position = Position.new({
                               :x => attributes[:x],
                               :y => attributes[:y]
                             })
    @orientation = (attributes[:orientation])
  end

  def set_properties(attributes)
    @position.x = attributes[:x]
    @position.y = attributes[:y]
    @orientation = attributes[:orientation]
  end

  def reorient(target_orientation)
    @orientation = target_orientation
  end

  def move_forward
    move_forward_direction = Direction::move_forward_direction[@orientation]
    @position.send(move_forward_direction)
  end

  def x
    @position.x
  end

  def y
    @position.y
  end

end
