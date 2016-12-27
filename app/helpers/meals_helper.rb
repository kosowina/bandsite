module MealsHelper
  def meal_params
    params.require(:meal).permit(:name, :price, :description, :category_id)
  end
end
