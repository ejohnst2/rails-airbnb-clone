Geocoder.configure(
  lookup: :google,            # name of geocoding service (symbol)
  use_https: true,           # use HTTPS for lookup requests? (if supported)
  api_key: ENV['GOOGLE_API_SERVER_KEY'],               # API key for geocoding service
  :units => :km,
)
