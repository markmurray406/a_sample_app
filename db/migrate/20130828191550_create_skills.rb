class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :summary
      t.string :description

      t.timestamps
    end
      add_index :skills, [:occupation_id, :user_id, :created_at]
  end
end
