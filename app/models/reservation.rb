class Reservation < ApplicationRecord
  belongs_to :table
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, length: { maximum: 255 }, 
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { conditions: -> { 
                                  where("DATE(created_at) = ?", Date.today) } }
  validates :username, presence: true, length: { maximum: 50 } 
  validates :phone, presence: true, numericality: true, length: { is: 9 }
  validates :table_id, presence: true
  validates :hour, presence: true, numericality:
                   { :greater_than_or_equal_to: 6, less_than: 24 }, 
                   uniqueness: { scope: :table_id, conditions: -> { 
                                 where("DATE(created_at) = ?", Date.today) } }
    
end
