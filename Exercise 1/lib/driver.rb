require_relative 'location'

class Driver
  attr_reader :current_position, :current_delivery

  def initialize(delivery = 'Empty', location_klass = Location)
    @current_delivery = delivery
    @current_position = location_klass.new
  end

  def current_infos
    update_position
    {
      picking_eta: picking_eta,
      delivery_eta: delivery_eta,
      current_latitude: current_latitude,
      current_longitude: current_longitude
    }
  end

  private

  def picking_eta
    @current_delivery.picking_eta(current_latitude, current_longitude)
  end

  def delivery_eta
    @current_delivery.delivery_eta(current_latitude, current_longitude)
  end

  def update_position
    @current_position = @current_position.new_location
  end

  def current_longitude
    @current_position.longitude
  end

  def current_latitude
    @current_position.latitude
  end
end
