class Application < ApplicationRecord
    belongs_to :user 
    belongs_to :program 

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :DOB, presence: true 
    validates :gender, presence: true 
    validates :grade, presence: true 
    validates :school, presence: true  
    validates :primary_doctor, presence: true 
    validates :allergies, presence: true
    validates :medical_conditions, presence: true
    validates :medications, presence: true
    validates :emergency_contact_name, presence: true
    validates :emergency_contact_relationship, presence: true
    validates :emergency_contact_number, length: { is: 10 }
end