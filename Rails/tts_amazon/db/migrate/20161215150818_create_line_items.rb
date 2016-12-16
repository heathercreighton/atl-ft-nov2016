class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :product_id
      t.integer :quantity
      t.decimal :line_item_total
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
