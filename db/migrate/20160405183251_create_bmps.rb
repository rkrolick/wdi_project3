class CreateBmps < ActiveRecord::Migration
  def change
    create_table :bmps do |t|
      t.integer :na
      t.integer :k
      t.integer :cl
      t.integer :bicarb
      t.integer :bun
      t.integer :cr
      t.integer :glucose
    end
  end
end
