class AddUniqueIndexToSpotifyId < ActiveRecord::Migration[5.2]
  def change
    remove_index :artists, :spotify_id
    add_index :artists, :spotify_id, unique: true
  end
end
