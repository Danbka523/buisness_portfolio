class CreateDeals < ActiveRecord::Migration[7.0]
  def change
    create_table :deals do |t|
      t.integer :t_id
      t.date :deal_date
      t.integer :count
      t.string :type_of

      t.timestamps
    end
  end
end
