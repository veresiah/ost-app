class CreateApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :applications do |t|
      t.integer :user_id
      t.integer :program_id
      t.string :primary_doctor
      t.string :allergies
      t.string :medical_conditions
      t.string :medications
      t.string :emergency_contact_name
      t.string :emergency_contact_relationship
      t.string :emergency_contact_number

      t.timestamps
    end
  end
end
