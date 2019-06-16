class CreateMushroomLists < ActiveRecord::Migration[5.2]
  def change
    create_table :mushroom_lists do |t|
      t.string :name
      t.integer :user_id
      t.integer :mushroom_id

      t.timestamps
    end
  end
end
