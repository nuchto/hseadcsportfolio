class AddImageToPortraits < ActiveRecord::Migration[5.2]
  def change
    add_column :portraits, :photo, :string
  end
end
