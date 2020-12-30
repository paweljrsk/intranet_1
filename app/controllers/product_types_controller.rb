class ProductTypesController < ApplicationController
  def index
    @category = ProductCategory.find(params[:category_id])
    @product_types = ProductType.all
    @category_posts = ProductCategory.find(params[:category_id]).posts
  end

  def show
    @product_type = ProductType.find(params[:id])
    @posts = @product_type.posts.page(params[:page]).per(6)
  end

  def edit
  end
  
end