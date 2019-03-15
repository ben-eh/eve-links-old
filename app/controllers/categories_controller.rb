class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
    @category.save
    redirect_to categories_path
  end

  def show
    @category = Category.find(params[:id])
    @links = @category.links
  end

  private

  # def set_category
  #   @category = Category.find(params[:id])
  # end

  def category_params
    params.require(:category).permit(:name)
  end

end
