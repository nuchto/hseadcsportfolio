class RemoveCoverFromGroups < ActiveRecord::Migration[5.2]
  def change
    remove_column :groups, :cover, :string
  end
end
