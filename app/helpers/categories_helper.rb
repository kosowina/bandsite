module CategoriesHelper
  def category_params
    params.require(:category).permit(:category, :name)
  end
end
