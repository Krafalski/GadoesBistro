class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :party_name
      t.integer :table_number
      t.boolean :bill_paid
    end
  end
end
