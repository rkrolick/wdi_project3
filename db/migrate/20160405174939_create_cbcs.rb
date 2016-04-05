class CreateCbcs < ActiveRecord::Migration
  def change
    create_table :cbcs do |t|
      t.integer :wbc
      t.integer :hgb
      t.integer :hct
      t.integer :plt
    end
  end
end
