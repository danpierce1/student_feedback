class Feedback < ActiveRecord::Base
  attr_accessible :rating, :recommendations, :strengths, :user_id, :weaknesses,  :cmodules
  belongs_to :cmodules
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :strengths, presence: true, length: { maximum: 140 }
  validates :weaknesses, presence: true, length: { maximum: 140 }
  validates :recommendations, presence: true, length: { maximum: 140 }
  validates :rating, presence: true
  
  validates :user_id, presence: true
end