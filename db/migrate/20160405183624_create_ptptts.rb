class CreatePtptts < ActiveRecord::Migration
  def change
    create_table :ptptts do |t|
      t.integer :pt
      t.integer :aptt
      t.integer :inr
      t.references :visit, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
