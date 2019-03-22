class RemoveCoverFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :cover, :string
  end
end
