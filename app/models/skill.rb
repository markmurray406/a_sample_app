class Skill < ActiveRecord::Base
  attr_accessible :description, :summary, :image, :user_id, :occupation_id

  validates :description, presence: true
  validates :summary, presence: true
  validates :user_id, presence: true
  validates :occupation_id, presence: true

  has_attached_file :image, styles: { medium: "320x240>"}
  validates_attachment :image, presence: true,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 5.megabytes }

  belongs_to :user
  belongs_to :occupation
end
