class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.string :description

      t.timestamps
    end
  end
end
