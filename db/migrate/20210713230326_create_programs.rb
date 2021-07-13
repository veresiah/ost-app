class CreatePrograms < ActiveRecord::Migration[6.1]
  def change
    create_table :programs do |t|
      t.string :name
      t.string :agency
      t.integer :contact_number
      t.string :grade_level
      t.text :address
      t.string :borough
      t.integer :user_id

      t.timestamps
    end
  end
end
