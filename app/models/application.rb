class Application < ApplicationRecord
    belongs_to :user 
    belongs_to :participant 

    validates :program_name, :primary_doctor, :allergies, :medical_conditions, :medications, :emergency_contact_name, :emergency_contact_relationship, presence: true
    validates :emergency_contact_number, length: { is: 10 }
end