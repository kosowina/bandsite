class Meal < ApplicationRecord
    belongs_to :category
    has_many :tags
end
