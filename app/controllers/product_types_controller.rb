class ProductTypesController < ApplicationController
  def index
    @product_types = ProductType.all
  end

  def show
  end

  def edit
  end
end
