class Tutorial < ActiveRecord::Base
  attr_accessible :description, :summary

  validates :description, presence: true
  validates :summary, presence: true
end
