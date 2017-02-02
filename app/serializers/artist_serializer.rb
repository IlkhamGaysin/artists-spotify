class ArtistSerializer < ApplicationSerializer
  attributes :spotify_id, :external_urls, :genres, :href, :name
end
