class AddTalentedTypeToTalents < ActiveRecord::Migration
  def change
    add_column :talents, :talented_type, :string
  end
end
