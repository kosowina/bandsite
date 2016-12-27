class CategoriesController < ApplicationController
  include CategoriesHelper
  def index
    @categories = Category.all
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "Kategoria stworzona"
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def destroy
    @category.destroy
    flash[:success] = "Usunięto"
    redirect_to categories_path
  end
end
