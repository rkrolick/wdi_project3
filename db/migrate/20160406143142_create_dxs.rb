class CreateDxes < ActiveRecord::Migration
  def change
    create_table :dxes do |t|
      t.string :code
      t.string :description
      t.timestamps null: false
    end
  end
end
