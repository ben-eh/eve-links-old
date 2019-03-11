class LinksController < ApplicationController

# no index method needed

  def new
    @link = Link.new
    @categories = Category.all
    @category = params[:category_id]
  end

  def create
    @link = Link.new(link_params)
    raise
    @link.save
    redirect_to links_path
  end

  private

  def link_params
    params.require(:link).permit(:name, :url, :category_id)
  end

end
