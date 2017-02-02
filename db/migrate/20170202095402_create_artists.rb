class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :spotify_id, null: false, index: true, unique: true
      t.jsonb :external_urls, null: false, default: '{}', unique: true
      t.jsonb :genres, null: false, default: '[]'
      t.string :href, null: false, unique: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
