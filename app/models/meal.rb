class Meal < ApplicationRecord
    belongs_to :category
    has_and_belongs_to_many :tags
    
    validates :name, presence: true, length: { maximum: 45 }
    validates :price, presence: true, numericality: {:only_integer => true, :allow_nil => false, greater_than: 0, less_than: 150}
    validates :description, length: { maximum: 100 }
end
