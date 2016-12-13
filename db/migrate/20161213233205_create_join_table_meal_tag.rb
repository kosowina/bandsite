class CreateJoinTableMealTag < ActiveRecord::Migration[5.0]
  def change
    create_join_table :meals, :tags do |t|
      # t.index [:meal_id, :tag_id]
      # t.index [:tag_id, :meal_id]
    end
  end
end
