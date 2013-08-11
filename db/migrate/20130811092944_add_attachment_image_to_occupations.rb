class AddAttachmentImageToOccupations < ActiveRecord::Migration
  def self.up
    change_table :occupations do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :occupations, :image
  end
end
