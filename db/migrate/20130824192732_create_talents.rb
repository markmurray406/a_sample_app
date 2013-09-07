class CreateTalents < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.text :content
      t.belongs_to :talented

      t.timestamps
    end
    add_index :talents, [:talented_id, :talented_type]
  end
end
