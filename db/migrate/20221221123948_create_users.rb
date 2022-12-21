class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :u_id
      t.string :name
      t.integer :port_id

      t.timestamps
    end
  end
end
