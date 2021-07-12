class Program < ApplicationRecord
    has_many :applications 
    has_many :users, through: :applications 

    validates :name, :agency, :grade_level, :borough, :address, presence: true
    validates :contact_number, length: { is: 10 }
    #scope :filter_by_agency -> {where("agency = ?", params[:agency])}
    #scope :filter_by_name -> {where("name = ?", params[:name])}
    #scope :filter_by_grade_level -> {where("grade_level = ?", params[:grade_level])}
end
