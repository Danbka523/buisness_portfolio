class CreatePortfolios < ActiveRecord::Migration[7.0]
  def change
    create_table :portfolios do |t|
      t.integer :id
      t.integer :user_id
      t.date :created_at
      t.date :archived_at
      t.integer :currency_id

      t.timestamps
    end
  end
end
