class CreateProjectbehances < ActiveRecord::Migration[5.2]
  def change
    create_table :projectbehances do |t|
      t.integer :level
      t.integer :group_id
      t.string :name

      t.timestamps
    end
  end
end
