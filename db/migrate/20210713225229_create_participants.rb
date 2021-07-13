class CreateParticipants < ActiveRecord::Migration[6.1]
  def change
    create_table :participants do |t|
      t.string :first_name
      t.string :last_name
      t.date :DOB
      t.string :grade
      t.string :gender
      t.string :school

      t.timestamps
    end
  end
end
