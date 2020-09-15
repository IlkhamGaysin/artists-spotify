class Artist < ApplicationRecord
  validates :name, :spotify_id, :external_urls, :href, presence: true
  validates :spotify_id, :href, uniqueness: true
end
