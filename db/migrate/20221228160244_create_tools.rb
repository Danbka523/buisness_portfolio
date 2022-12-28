class CreateTools < ActiveRecord::Migration[7.0]
  def change
    create_table :tools do |t|
      t.integer :t_id
      t.integer :c_id
      t.integer :p_id
      t.integer :count
      t.integer :price

      t.timestamps
    end
  end
end
