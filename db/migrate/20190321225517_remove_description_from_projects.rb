class RemoveDescriptionFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :description, :string
  end
end
