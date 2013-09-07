class Talent < ActiveRecord::Base
  attr_accessible :content, :talented_id, :talented_type
  #note in railscast episode on polymorphic associations, ryan removes :talented_id, :talented_type becasue he doen't need mass assignment
  belongs_to :talented, polymorphic: true
end
