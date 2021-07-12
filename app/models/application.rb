class Application < ApplicationRecord
    belongs_to :user 
    belongs_to :program 

    validates :first_name, :last_name, :DOB, :gender, :grade, :school, :primary_doctor, :allergies, :medical_conditions, :medications, :emergency_contact_name, :emergency_contact_relationship, presence: true
    validates :emergency_contact_number, length: { is: 10 }
end