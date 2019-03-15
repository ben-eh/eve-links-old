class LinksController < ApplicationController

# no index method needed

  def new
    @link = Link.new
    @categories = Category.all
  end

  def create
    @link = Link.new(link_params)
    @link.save
    redirect_to categories_path
  end

  private

  def link_params
    params.require(:link).permit(:name, :url, :category_id)
  end

end
