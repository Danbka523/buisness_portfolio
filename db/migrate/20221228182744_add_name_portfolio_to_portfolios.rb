class AddNamePortfolioToPortfolios < ActiveRecord::Migration[7.0]
  def change
    add_column :portfolios, :name_p, :string
  end
end
