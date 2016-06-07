require_relative 'location'

class Driver
  def initialize=(delivery, location_klass = Location)
    @delivery = delivery
    @current_position = location_klass.new
  end

  def current_infos
    picking_eta = current_delivery.picking_eta(current_position.latitude, current_position.longitude)
    delivery_eta = current_delivery.delivery_eta(current_position.latitude, current_position.longitude)
    { picking_eta: picking_eta, delivery_eta: delivery_eta, current_latitude: current_position.latitude, current_longitude: current_position.longitude }
  end

  # private

  def new_position
    @current_position = @current_position.new_location
  end

  def current_longitude
    @current_position.longitude
  end

  def current_latitude
    @current_latitude.latitude
  end

  # def current_position
  #   # Make a call to Google API which returns an object with 'latitude' and 'longitude'.
  #   Service::Google.get_position
  # end
end
