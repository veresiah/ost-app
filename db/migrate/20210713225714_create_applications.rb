class CreateApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :applications do |t|
      t.integer :participant_id
      t.integer :user_id
      t.string :program_name
      t.string :primary_doctor
      t.string :allergies
      t.string :medical_conditions
      t.string :medications
      t.string :emergency_contact
      t.integer :emergency_contact_number
      t.string :emergency_contact_relationship

      t.timestamps
    end
  end
end
