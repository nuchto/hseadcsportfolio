class AddImageToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :projectcover, :string
  end
end
