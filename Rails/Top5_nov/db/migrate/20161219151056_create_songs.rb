class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :rating
      t.integer :artist_id

      t.timestamps null: false
    end
  end
end
