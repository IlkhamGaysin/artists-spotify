class AddFavoriteToArtists < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :favorite, :boolean, null: false, default: false
  end
end
