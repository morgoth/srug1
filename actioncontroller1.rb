class CategoriesController < ApplicationController
  before_filter :login_required, :except => :index
  def index
    @categories = Category.all
  end
  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to categories_path
    else
      flash[:error] = "Achtung! Zug!"
      render :action => "new"
    end
  end
end
