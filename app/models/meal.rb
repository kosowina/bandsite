class Meal < ApplicationRecord
    belongs_to :category
    has_and_belongs_to_many :tags
    
    validates :name, presence: true, length: { maximum: 45 }
    validates :price, presence: true 
    validates :description, presence: true, length: { maximum: 100 }
end
