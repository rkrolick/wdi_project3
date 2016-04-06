class CreateRxs < ActiveRecord::Migration
  def change
    create_table :rxes do |t|
      t.string :drugName
      t.float :dosage
      t.string :route
      t.string :frequency
      t.references :visit, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
