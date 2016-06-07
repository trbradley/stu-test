class Location
  attr_reader :longitude, :latitude

  def initialize
    # Make a call to Google API which returns an object with 'latitude' and 'longitude'.
    location = Service::Google.get_position
    @longitude = location.longitude
    @latitude = location.latitude
  end

  def new_location
    Location.new
  end
end
