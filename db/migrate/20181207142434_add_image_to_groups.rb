class AddImageToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :groupcover, :string
  end
end
