class Vehicule
  def self.move(vehicule)
    case vehicule
    when Bicycle
      vehicule.move_bicycle
    when Motorbike
      vehicule.move_motorbike
    when Car
      vehicule.move_car
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
