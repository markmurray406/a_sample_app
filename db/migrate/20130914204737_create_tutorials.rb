class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :summary
      t.string :description

      t.timestamps
    end
  end
end
