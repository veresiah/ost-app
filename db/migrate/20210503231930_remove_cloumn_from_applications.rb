class RemoveCloumnFromApplications < ActiveRecord::Migration[6.1]
  def change
    remove_column :applications, :program_name, :string
  end
end
