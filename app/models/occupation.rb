class Occupation < ActiveRecord::Base
  attr_accessible :description

	#Adding validation that there is text in description, see omrails Generate Pins Scaffold, 17:30, see also http://edgeguides.rubyonrails.org/active_record_validations.html 
  validates :description, presence: true
end
