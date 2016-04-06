class CreateCbcs < ActiveRecord::Migration
  def change
    create_table :cbcs do |t|
      t.integer :wbc
      t.float :hgb
      t.integer :hct
      t.integer :plt
      t.references :visit, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
