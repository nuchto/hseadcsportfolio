class CreateProjectsites < ActiveRecord::Migration[5.2]
  def change
    create_table :projectsites do |t|
      t.integer :level
      t.integer :group_id
      t.string :name

      t.timestamps
    end
  end
end
