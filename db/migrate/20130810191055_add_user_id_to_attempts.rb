class AddUserIdToAttempts < ActiveRecord::Migration
  def change
    add_column :attempts, :user_id, :integer
    add_index :attempts, :user_id
  end
end
