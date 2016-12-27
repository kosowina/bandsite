class Reservation < ApplicationRecord
  belongs_to :table
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX }
  validates :username, presence: true, length: { maximum: 50 } 
  validates :phone, :presence => true, :numericality => true,
            :length => { :minimum => 10, :maximum => 15 }
  validates :table_id, presence: true
  validates :hour, presence: true
  validates_uniqueness_of :hour, 
    conditions: -> { where("DATE(created_at) = ?", Date.today) } 
    
end
