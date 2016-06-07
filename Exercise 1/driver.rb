class Driver
  def initialize(delivery)
    @delivery = delivery
  end

  def current_infos
    picking_eta = current_delivery.picking_eta(current_position.latitude, current_position.longitude)
    delivery_eta = current_delivery.delivery_eta(current_position.latitude, current_position.longitude)
    { picking_eta: picking_eta, delivery_eta: delivery_eta, current_latitude: current_position.latitude, current_longitude: current_position.longitude }
  end

  private

  def current_position
    # Make a call to Google API which returns an object with 'latitude' and 'longitude'.
    Service::Google.get_position
  end
end
