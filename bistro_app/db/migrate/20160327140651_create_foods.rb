class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :food_name
      t.string :food_type
      t.float :price
      t.string :allergens
      t.string :other_info

    end
  end
end
