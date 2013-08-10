class Occupation < ActiveRecord::Base
  attr_accessible :description

	#Adding validation that there is text in description, see omrails Generate Pins Scaffold, 17:30, see also http://edgeguides.rubyonrails.org/active_record_validations.html 
  validates :description, presence: true

  #Adding belongs to user, see omrails Add Associations,
  belongs_to :user
  #Adding validation that there is text in description, see omrails Add Associations, 30:00,
  validates :user_id, presence: true
end
