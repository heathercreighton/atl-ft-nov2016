class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :teacher
      t.string :room_no

      t.timestamps null: false
    end
  end
end
