class MealsController < ApplicationController
  include MealsHelper
  
  def index
    @meals = Meal.all
    @categories = load_categories
    @categories_names = Category.all
  end

  def show
  end

  def new
    @meals = Meal.new
    @categories = load_categories

  end

  def create
    @meals = Meal.new(meal_params)
    if @meals.save
      flash.notice = "Dodano '#{@meals.name}'"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    @meals = Meal.find(params[:id])
    @categories = load_categories
  end

  def update
    @meals = Meal.find(params[:id])
    @meals.update(meal_params)
    
    flash.notice = "Edytowano '#{@meals.name}'"
    
    redirect_to meals_path
  end

  def destroy
    @meals = Meal.find(params[:id])
    @meals.destroy
    
    redirect_to meals_path
  end
  
  private
    def load_categories
      Category.all
    end
end
