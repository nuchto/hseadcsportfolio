class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.integer :year_start
      t.integer :year_end
      t.string :name
      t.timestamps
    end
  end
end
