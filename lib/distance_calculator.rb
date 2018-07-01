require 'google_maps_service'

class DistanceCalculator
  def get_driving_distance(address1,address2)
    gmaps = GoogleMapsService::Client.new(key: 'AIzaSyALdiVro0qflyRF3pFQ9tFmlzweT6dBk-4')
    origins = [address1]
    destinations=[address2]
    matrix = gmaps.distance_matrix(origins, destinations)
    value = matrix[:rows][0][:elements][0][:duration][:value]
  end
end