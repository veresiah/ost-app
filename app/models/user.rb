class User < ApplicationRecord
    has_secure_password

    has_many :applications
    has_many :programs, through: :applications 

    validates :password, presence: true
    validates :email, presence: true, uniqueness: true
    validates :name, presence: true

    def self.from_omniauth(response)
        User.find_or_create_by(uid: response['uid'], provider: response['provider']) do |u|
            u.name = response['info']['name']
            u.email = response['info']['email']
            u.password = SecureRandom.hex(15)
        end
    end 
end