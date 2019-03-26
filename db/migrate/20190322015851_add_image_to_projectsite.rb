class AddImageToProjectsite < ActiveRecord::Migration[5.2]
  def change
    add_column :projectsites, :worksite, :string
  end
end
