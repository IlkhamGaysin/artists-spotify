class ArtistsSeeder
  attr_reader :artists

  def initialize(artists = [])
    @artists = artists
  end

  def persist!
    @artists.each do |artist|
      save_artist!(artist) unless record_exists?(artist)
    end
  end

  private

  def record_exists?(artist)
    Artist.exists?(spotify_id: artist.id)
  end

  def save_artist!(artist)
    record = build_record(artist)
    record.save!

  rescue ActiveRecord::RecordInvalid => e
    Rails.logger.info("Couldn't save the artist #{artist.id} message: #{e.message}")
  end

  def build_record(artist)
    Artist.new.tap do |new_record|
      new_record.name = artist.name
      new_record.href = artist.href
      new_record.genres = artist.genres
      new_record.spotify_id = artist.id
      new_record.external_urls = artist.external_urls
    end
  end
end
