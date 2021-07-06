class Program < ApplicationRecord
    has_many :applications 
    has_many :users, through: :applications 

    validates :name, presence: true
    validates :agency, presence: true
    validates :contact_number, length: { is: 10 }
    validates :grade_level, presence: true 
    validates :address, presence: true 
    validates :capacity, presence: true

    #scope :filter_by_agency -> {where("agency = ?", params[:agency])}
    #scope :filter_by_name -> {where("name = ?", params[:name])}
    #scope :filter_by_grade_level -> {where("grade_level = ?", params[:grade_level])}
end
