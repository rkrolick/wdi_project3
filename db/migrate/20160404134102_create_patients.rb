class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :firstName
      t.string :lastName
      t.integer :mrn
      t.string :attendingName
      t.integer :roomNumber
      t.string :codeStatus
      t.string :dob
      t.integer :age
      t.string :allergies
      t.string :diet
      t.string :nextOfKin
      t.string :nextOfKinPhoneNumber
      t.string :isolation
      t.text :pmh
      t.text :homeMeds
      t.text :surgicalHx
      t.string :familyHistory
      t.boolean :smoking
      t.boolean :alcohol
      t.boolean :drugs
      t.string :psychHx
      t.string :occupation

      t.timestamps null: false
    end
  end
end
