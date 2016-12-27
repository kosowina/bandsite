class Reservation < ApplicationRecord
    belongs_to :table
    belongs_to :time_table
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, length: { maximum: 255 },
              format: { with: VALID_EMAIL_REGEX }
    validates :username, presence: true, length: { maximum: 50 } 
    validates :phone, :presence => true, :numericality => true,
              :length => { :minimum => 10, :maximum => 15 }
    validates :table_id, presence: true
    validates :time_table_id, presence: true
    
    def today
      where(:created_at => (Time.zone.now.beginning_of_day..Time.zone.now))
    end
end
