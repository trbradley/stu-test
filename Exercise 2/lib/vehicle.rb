class Vehicle
  DEFAULT_MOVE_DISTANCE = 0

  attr_reader :driver, :distance

  def initialize(driver)
    @driver = driver
    @distance = 0
  end

  def change_distance
    @distance += self.class::DEFAULT_MOVE_DISTANCE
  end

  class << self
    def move(vehicle)
      vehicle.change_distance
    end
  end
end


class Bicycle < Vehicle
  DEFAULT_MOVE_DISTANCE = 2
end

class Motorbike < Vehicle
  DEFAULT_MOVE_DISTANCE = 4
end

class Car < Vehicle
  DEFAULT_MOVE_DISTANCE = 6
end
