class AddImageToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :work, :string
    add_column :projects, :workcover, :string
  end
end
