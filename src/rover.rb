require_relative 'position'
require_relative 'orientation'

class Rover
  attr_accessor :position, :orientation

  def initialize(attributes)
    @position = Position.new({
                               :x => attributes[:x],
                               :y => attributes[:y]
                             })
    @orientation = Orientation.new(attributes[:orientation])
  end

  def set_properties(attributes)
    @position.x = attributes[:x]
    @position.y = attributes[:y]
    @orientation.current = attributes[:orientation]
  end

  def reorient(target_orientation)
    @orientation.current = target_orientation
  end

  def move_forward
    move_forward_direction = Direction::move_forward_direction[@orientation.current]
    @position.send(move_forward_direction)
  end

  def x
    @position.x
  end

  def y
    @position.y
  end

end
