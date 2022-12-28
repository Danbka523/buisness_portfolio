class RemovePortIdFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :port_id, :integer
  end
end
