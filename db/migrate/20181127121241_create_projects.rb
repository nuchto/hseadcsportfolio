class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :level
      t.integer :group_id
      t.string :name
      t.string :description
      t.string :cover

      t.timestamps
    end
  end
end
