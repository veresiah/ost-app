class User < ApplicationRecord
    has_secure_password

    has_many :programs
    has_many :applications
    has_many :participants, through: :applications

    validates :name, :password, presence: true
    validates :email, presence: true, uniqueness: true

    def self.from_omniauth(response)
        User.find_or_create_by(uid: response['uid'], provider: response['provider']) do |u|
            u.name = response['info']['name']
            u.email = response['info']['email']
            u.password = SecureRandom.hex(15)
        end
    end 
end