class Vehicle
  attr_reader :driver, :distance

  def initialize(driver)
    @driver = driver
    @distance = 0
    @default_move_distance = 0
  end

  def change_distance
    @distance += default_move_distance
  end

  class << self
    def move(vehicle)
      vehicle.change_distance
    end
  end
end


class Bicycle < Vehicle
  def default_move_distance
    2
  end
end

class Motorbike < Vehicle
  def default_move_distance
    4
  end
end

class Car < Vehicle
  def default_move_distance
    6
  end
end
