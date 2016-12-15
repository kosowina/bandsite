class MealsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, except: [:show]
  before_action :admin_user, except: [:show]
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
