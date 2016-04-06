class CreateVitals < ActiveRecord::Migration
  def change
    create_table :vitals do |t|
      t.integer :o2Sat
      t.float :temp
      t.integer :heartRate
      t.integer :systolic
      t.integer :diastolic
      t.integer :respiratoryRate
      t.references :visit, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
