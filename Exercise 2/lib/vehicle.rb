class Vehicle
  def self.move(vehicle)
    case vehicle
    when Bicycle
      vehicle.move_bicycle
    when Motorbike
      vehicle.move_motorbike
    when Car
      vehicle.move_car
    end
  end
end


class Bicycle
  attr_reader :driver, :distance

  def initialize(driver)
    @driver = driver
    @distance = 0
  end

  def move_bicycle
    @distance = @distance + 2
  end
end

class Motorbike
  attr_reader :driver, :distance

  def initialize(driver)
    @driver = driver
    @distance = 0
  end

  def move_motorbike
    @distance = @distance + 4
  end
end

class Car
  attr_reader :driver, :distance

  def initialize(driver)
    @driver = driver
    @distance = 0
  end

  def move_car
    @distance = @distance + 6
  end
end
