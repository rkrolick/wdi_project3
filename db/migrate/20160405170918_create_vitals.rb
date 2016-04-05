class CreateVitals < ActiveRecord::Migration
  def change
    create_table :vitals do |t|
      t.integer :o2Sat
      t.float :temp
      t.integer :heartRate
      t.integer :systolic
      t.integer :diastolic
      t.integer :respitoryRate      
    end
  end
end
