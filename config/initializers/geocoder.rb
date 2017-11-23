Geocoder.configure(
  # Geocoding options
  # timeout: 3,                 # geocoding service timeout (secs)
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> d2dc99b8b5c34a8e6be5985819344605554d6ca8
  lookup: :google,            # name of geocoding service (symbol)
  # ip_lookup: :freegeoip,      # name of IP address geocoding service (symbol)
  # language: :en,              # ISO-639 language code
  use_https: true,           # use HTTPS for lookup requests? (if supported)
  # http_proxy: nil,            # HTTP proxy server (user:pass@host:port)
  # https_proxy: nil,           # HTTPS proxy server (user:pass@host:port)
  api_key: ENV['GOOGLE_API_SERVER_KEY'],               # API key for geocoding service
<<<<<<< HEAD
=======
  # lookup: :google,            # name of geocoding service (symbol)
  # ip_lookup: :freegeoip,      # name of IP address geocoding service (symbol)
  # language: :en,              # ISO-639 language code
  # use_https: false,           # use HTTPS for lookup requests? (if supported)
  # http_proxy: nil,            # HTTP proxy server (user:pass@host:port)
  # https_proxy: nil,           # HTTPS proxy server (user:pass@host:port)
  # api_key: nil,               # API key for geocoding service
>>>>>>> 17a835f6f6c9100648204a503c392df7770dea3e
=======
>>>>>>> d2dc99b8b5c34a8e6be5985819344605554d6ca8
  # cache: nil,                 # cache object (must respond to #[], #[]=, and #del)
  # cache_prefix: 'geocoder:',  # prefix (string) to use for all cache keys

  # Exceptions that should not be rescued by default
  # (if you want to implement custom error handling);
  # supports SocketError and Timeout::Error
  # always_raise: [],

  # Calculation options
<<<<<<< HEAD
<<<<<<< HEAD
  # units: :mi,                 # :km for kilometers or :mi for miles
  # distances: :linear          # :spherical or :linear
  :units => :km,
=======
  # units: :km,                 # :km for kilometers or :mi for miles
  # distances: :linear          # :spherical or :linear
>>>>>>> 17a835f6f6c9100648204a503c392df7770dea3e
=======
  # units: :mi,                 # :km for kilometers or :mi for miles
  # distances: :linear          # :spherical or :linear
  :units => :km,
>>>>>>> d2dc99b8b5c34a8e6be5985819344605554d6ca8
)
