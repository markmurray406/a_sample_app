class AddUserIdToOccupations < ActiveRecord::Migration
  def change
    add_column :occupations, :user_id, :integer
    add_index :occupations, :user_id
  end
end
