class RemoveColumnFromApplications < ActiveRecord::Migration[6.1]
  def change
    remove_column :applications, :borough, :string
  end
end
