api_key        = ENV["SPOTIFY_API_KEY"]
api_secret_key = ENV["SPOTIFY_APY_KEY_SECRET"]

RSpotify.authenticate(api_key, api_secret_key) if api_key && api_secret_key
