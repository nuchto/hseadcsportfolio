class AddImageToProjectbehance < ActiveRecord::Migration[5.2]
  def change
    add_column :projectbehances, :workbehance, :string
  end
end
