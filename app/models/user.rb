class User < ApplicationRecord
    has_secure_password

    has_many :applications
    has_many :programs, through: :applications 

    validates :password, presence: true
    validates :email, presence: true, uniqueness: true
    #validates :first_name, presence: true
    #validates :last_name, presence: true
    #validates :username, presence: true, uniqueness: true 
    #validates :phone_number, length: { is: 10 }
    #validates :street_address, presence: true 
    #validates :city, presence: true 
    #validates :state, presence: true
    #validates :zip_code, presence: true, length: { is: 5 }

    def self.from_omniauth(response)
        User.find_or_create_by(uid: response['uid'], provider: response['provider']) do |u|
            u.email = response['info']['email']
            u.first_name = response['info']['first_name']
            u.last_name = response['info']['last_name']
            u.password = SecureRandom.hex(15)
        end
    end 
end