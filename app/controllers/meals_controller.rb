class MealsController < ApplicationController
  include MealsHelper
  def index
    @meals = Meal.all
  end

  def show
    @meals = Meal.find(params[:id])
  end

  def new
    @meals = Meal.new
  end

  def create
    @meals = Meal.new(meal_params)
    @meals.save
    
    redirect_to meals_path
  end

  def edit
    @meals = Meal.find(params[:id])

  end

  def update
    @meals = Meal.find(params[:id])
    @meals.update(meal_params)
    
    flash.notice = "Potrawę '#{@meals.title}' zmodyfikowano"
    
    redirect_to meals_path
  end

  def destroy
    @meals = Meal.find(params[:id])
    @meals.destroy
    
    redirect_to meals_path
  end
end
