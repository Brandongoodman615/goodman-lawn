require 'google_maps_service'

# Setup global parameters
GoogleMapsService.configure do |config|
  config.key = 'AIzaSyALdiVro0qflyRF3pFQ9tFmlzweT6dBk-4'
  config.retry_timeout = 20
  config.queries_per_second = 10
end