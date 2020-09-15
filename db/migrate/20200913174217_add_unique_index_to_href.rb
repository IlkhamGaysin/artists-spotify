class AddUniqueIndexToHref < ActiveRecord::Migration[5.2]
  def change
    remove_index :artists, :href
    add_index :artists, :href, unique: true
  end
end
