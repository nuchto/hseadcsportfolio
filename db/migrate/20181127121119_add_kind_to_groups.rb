class AddKindToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :kind, :string
  end
end
