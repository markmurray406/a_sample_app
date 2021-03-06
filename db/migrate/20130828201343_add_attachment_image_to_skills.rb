class AddAttachmentImageToSkills < ActiveRecord::Migration
  def self.up
    change_table :skills do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :skills, :image
  end
end
