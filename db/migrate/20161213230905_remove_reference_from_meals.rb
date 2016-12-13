class RemoveReferenceFromMeals < ActiveRecord::Migration[5.0]
  def change
        remove_reference :meals, :tag, index: true, foreign_key: true
  end
end
