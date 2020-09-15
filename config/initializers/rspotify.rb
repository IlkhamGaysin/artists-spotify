api_key        = ENV.fetch("SPOTIFY_API_KEY", nil)
api_secret_key = ENV.fetch("SPOTIFY_APY_KEY_SECRET", nil)

RSpotify.authenticate(api_key, api_secret_key) if api_key && api_secret_key
