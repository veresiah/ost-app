class AddColumnToPrograms < ActiveRecord::Migration[6.1]
  def change
    add_column :programs, :borough, :string
  end
end
