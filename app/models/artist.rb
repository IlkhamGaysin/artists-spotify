class Artist < ApplicationRecord
  validates :name, :spotify_id, :external_urls, :href, presence: true
  validates :spotify_id, :href, :external_urls, uniqueness: true
end
