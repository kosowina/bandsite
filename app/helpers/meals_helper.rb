module MealsHelper
  def meal_params
    params.require(:meal).permit(:name, :price, :description)
  end
end
