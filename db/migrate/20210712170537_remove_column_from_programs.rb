class RemoveColumnFromPrograms < ActiveRecord::Migration[6.1]
  def change
    remove_column :programs, :capacity, :string
  end
end
