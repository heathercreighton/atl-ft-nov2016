class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.decimal :cost
      t.integer :duration

      t.timestamps null: false
    end
  end
end
