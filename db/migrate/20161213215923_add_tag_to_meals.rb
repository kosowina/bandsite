class AddTagToMeals < ActiveRecord::Migration[5.0]
  def change
    add_reference :meals, :tag, foreign_key: true
  end
end
