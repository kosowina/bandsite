class Reservation < ApplicationRecord
  belongs_to :table
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX }
  validates :username, presence: true, length: { maximum: 50 } 
  validates :phone, presence: true, numericality: true, length: {is: 9}
  validates :table_id, presence: true
  validates :hour, presence: true, length: { minimum: 6, maximum: 24 } 
  validates_uniqueness_of :hour, :email,
    conditions: -> { where("DATE(created_at) = ?", Date.today) } 
  validates :table_id, :uniqueness => {:scope => :hour}
    
end
