class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :foods, :guests do |t|
      t.index [:food_id, :guest_id]
      t.index [:guest_id, :food_id]
    end
  end
end
