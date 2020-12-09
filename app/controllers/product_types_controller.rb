class ProductTypesController < ApplicationController
  def index
    @product_types = ProductType.all
  end

  def show
    @product_type = ProductType.find(params[:id])
    @posts = @product_type.posts.page(params[:page]).per(6)
  end

  def edit
  end
  
end
