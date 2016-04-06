class CreateDxes < ActiveRecord::Migration
  def change
    create_table :dxes do |t|
      t.string :code
      t.string :description
      t.references :visit, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
