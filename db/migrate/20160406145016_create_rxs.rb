class CreateRxs < ActiveRecord::Migration
  def change
    create_table :rxs do |t|
      t.string :drugName
      t.float :dosage
      t.string :route
      t.string :frequency
      t.timestamps null: false
    end
  end
end
