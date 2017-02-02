module Api
  module V1
    class ArtistSerializer < Api::V1::ApplicationSerializer
      attributes :spotify_id, :name, :external_urls, :href, :genres
    end
  end
end
