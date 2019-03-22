class CreateProjectportfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :projectportfolios do |t|
      t.integer :level
      t.integer :group_id
      t.string :name

      t.timestamps
    end
  end
end
