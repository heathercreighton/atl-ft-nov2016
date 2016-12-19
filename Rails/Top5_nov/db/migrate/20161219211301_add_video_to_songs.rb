class AddVideoToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :video, :string
  end
end
