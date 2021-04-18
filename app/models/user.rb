class User < ApplicationRecord
    has_secure_password

    has_many :applications
    has_many :programs, through: :applications 

end
