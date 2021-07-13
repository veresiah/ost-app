class Participant < ApplicationRecord 
    has_many :applications
    has_many :users, through: :applications 

    validates ::first_name, :last_name, :DOB, :grade, :gender, :school, presence: true
end