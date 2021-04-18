class CreatePrograms < ActiveRecord::Migration[6.1]
  def change
    create_table :programs do |t|
      t.string :name
      t.string :agency
      t.integer :contact_number
      t.string :grade_level
      t.text :address
      t.integer :capacity
      
      t.timestamps
    end
  end
end
