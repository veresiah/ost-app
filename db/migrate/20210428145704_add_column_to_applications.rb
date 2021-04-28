class AddColumnToApplications < ActiveRecord::Migration[6.1]
  def change
    add_column :applications, :program_name, :string
  end
end
