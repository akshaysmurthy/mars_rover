module Direction
  def self.directions_hash
    {
      "N" => {
        "L" => "W",
        "R" => "E"
      },
      "S" => {
        "L" => "E",
        "R" => "W"
      },
      "E" => {
        "L" => "N",
        "R" => "S"
      },
      "W" => {
        "L" => "S",
        "R" => "N"
      }
    }
  end

  def self.move_forward_direction
    {
      "N" => "front",
      "S" => "back",
      "E" => "right",
      "W" => "left"
    }
  end
end
