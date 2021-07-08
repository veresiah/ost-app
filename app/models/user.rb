class User < ApplicationRecord
    has_secure_password

    has_many :applications
    has_many :programs, through: :applications 

    #validates :password, presence: true
    validates :email, presence: true, uniqueness: true
    #validates :first_name, presence: true
    #validates :last_name, presence: true
    #validates :username, presence: true, uniqueness: true 
    #validates :phone_number, length: { is: 10 }
    #validates :street_address, presence: true 
    #validates :city, presence: true 
    #validates :state, presence: true
    #validates :zip_code, presence: true, length: { is: 5 }
end