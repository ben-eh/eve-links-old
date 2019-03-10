class LinksController < ApplicationController

# here was thinking of doing filter on links index if I can pass 'category_id' or whatever
  def index
    @links = Link.all.where(category_id: params[:id])
    # raise
  end

  def new
    @link = Link.new
    @categories = Category.all
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
