class CreateBmps < ActiveRecord::Migration
  def change
    create_table :bmps do |t|
      t.float :na
      t.float :k
      t.float :cl
      t.float :bicarb
      t.float :bun
      t.float :cr
      t.float :glucose
      t.references :visit, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
