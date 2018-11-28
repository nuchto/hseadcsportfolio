class AddLevelQuantityToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :level_quantity, :integer
  end
end
