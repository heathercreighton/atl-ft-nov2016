class CreateTweetTags < ActiveRecord::Migration
  def change
    create_table :tweet_tags do |t|
      t.integer :tweet_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
