class AddUseridToPrograms < ActiveRecord::Migration[6.1]
  def change
    add_column :programs, :user_id, :string
  end
end
