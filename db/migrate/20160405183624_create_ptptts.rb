class CreatePtptts < ActiveRecord::Migration
  def change
    create_table :ptptts do |t|
      t.integer :pt
      t.integer :aptt
      t.integer :inr
    end
  end
end
