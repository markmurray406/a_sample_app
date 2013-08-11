class Skill < ActiveRecord::Base
	#Adding images, see omrails Add paperclip, 06:00
  attr_accessible :description, :image

 	#Adding validation that there is text in description, see omrails Generate Pins Scaffold, 17:30, see also http://edgeguides.rubyonrails.org/active_record_validations.html 
  validates :description, presence: true
  #Adding validation that there is text in description, see omrails Add Associations, 30:00,
  validates :user_id, presence: true
  #Adding validation that there is an image, see omrails Add paperclip, 06:00
  validates_attachment :image, presence: true,
  															content_type: {content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] }, 
  															size: { less_than: 5.megabytes }

  #Adding belongs to user, see omrails Add Associations,
  belongs_to :user
  #Adding images, see omrails Add paperclip, 06:00
  has_attached_file :image, styles: { medium: "320x240>"}
end
