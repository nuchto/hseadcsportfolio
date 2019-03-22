class AddWorkportfolioToProjectportfolio < ActiveRecord::Migration[5.2]
  def change
    add_column :projectportfolios, :workportfolio, :string
  end
end
