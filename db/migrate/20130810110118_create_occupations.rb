class CreateOccupations < ActiveRecord::Migration
  def change
    create_table :occupations do |t|
      t.string :description

      t.timestamps
    end
    add_index :occupations, [:user_id, :created_at]
  end
end
