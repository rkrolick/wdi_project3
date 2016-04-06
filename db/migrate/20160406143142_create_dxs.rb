class CreateDxs < ActiveRecord::Migration
  def change
    create_table :dxs do |t|
      t.string :api_name
      t.string :code
      t.string :description
      t.timestamps null: false
    end
  end
end
